/* Copyright (c) 2017 - 2021 LiteSpeed Technologies Inc.  See LICENSE. */
/*
 * lsquic_nn.c -- LSQUIC nn implementation.
 */

#include <inttypes.h>
#include <math.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>
#include <sys/queue.h>
#ifdef WIN32
#include <vc_compat.h>
#endif


#include "lsquic_int_types.h"
#include "lsquic_types.h"
#include "lsquic_hash.h"
#include "lsquic_util.h"
#include "lsquic_cong_ctl.h"
#include "lsquic_sfcw.h"
#include "lsquic_conn_flow.h"
#include "lsquic_varint.h"
#include "lsquic_hq.h"
#include "lsquic_stream.h"
#include "lsquic_rtt.h"
#include "lsquic_conn_public.h"
#include "lsquic_packet_common.h"
#include "lsquic_packet_out.h"
#include "lsquic_nn.h"
#include "hdf5.h"            //引入h5的处理文件

//#define LSQUIC_LOGGER_MODULE LSQLM_NN
#define LSQUIC_LOG_CONN_ID lsquic_conn_log_cid(nn->nn_conn)
#include "lsquic_logger.h"

#define FAST_CONVERGENCE 1
#define BETA 205                    /* 205/1024 */
#define C 410                       /* 410/1024 */
#define TWO_MINUS_BETA_OVER_TWO 922 /* 922/1024 */
#define ONE_MINUS_BETA 819          /* 819/1024 */
#define ONE_OVER_C 2560             /* 2560/1024 */
float min(float a ,float b)
{
    if(a<b)return a;
    else
    return b;
}
float max(float a,float b)
{
    if(a<b)return b;
    else
    return a;
}
struct dim {
  hsize_t d0, d1, d2;
  } ;
static void
nn_reset(struct lsquic_nn *nn)
{
    memset(nn, 0, offsetof(struct lsquic_nn, nn_conn));
    nn->nn_cwnd = 32 * TCP_MSS;
    nn->nn_last_max_cwnd = 32 * TCP_MSS;
    
}

// void lsquic_nn_set_flags(struct lsquic_nn *nn, enum nn_flags flags)
// {
//     LSQ_DEBUG("%s(nn, 0x%X)", __func__, flags);
//     nn->nn_flags = flags;
// }

static void
lsquic_nn_init(void *cong_ctl, const struct lsquic_conn_public *conn_pub,
               enum quic_ft_bit UNUSED_retx_frames)
{
    struct lsquic_nn *const nn = cong_ctl;
    nn_reset(nn);
    nn->nn_ssthresh = 10000 * TCP_MSS; /* Emulate "unbounded" slow start */
    nn->nn_conn = conn_pub->lconn;
    nn->nn_rtt_stats = &conn_pub->rtt_stats;
    s_batchno=0;
      a_batchno=0;
        p_batchno=0;
          r_batchno=0;
          nn->curr_delayno=0;
          nn->curr_bytesno=0;
          nn->step_len_ms=10;
          nn->nn_cwnd = 10.0;
          nn->min_rtt=1e9+7;
          nn->step_cnt=0;




   // nn->nn_flags = DEFAULT_CUBIC_FLAGS;
#ifndef NDEBUG
    const char *s;
    s = getenv("LSQUIC_nn_SAMPLING_RATE");
    if (s)
        nn->nn_sampling_rate = atoi(s);
    else
#endif
        nn->nn_sampling_rate = 100000;
    LSQ_DEBUG("%s(nn, $conn)", __func__);
    LSQ_INFO("initialized");
}

static void
lsquic_nn_reinit(void *cong_ctl)
{
    struct lsquic_nn *const nn = cong_ctl;
    nn_reset(nn);
    nn->nn_ssthresh = 10000 * TCP_MSS; /* Emulate "unbounded" slow start */
    LSQ_DEBUG("re-initialized");
}

#define LOG_CWND(c)                                  \
    do                                               \
    {                                                \
        if (LSQ_LOG_ENABLED(LSQ_LOG_INFO))           \
        {                                            \
            lsquic_time_t now = lsquic_time_now();   \
            now -= now % (c)->nn_sampling_rate;      \
            if (now > (c)->nn_last_logged)           \
            {                                        \
                LSQ_INFO("CWND: %lu", (c)->nn_cwnd); \
                (c)->nn_last_logged = now;           \
            }                                        \
        }                                            \
    } while (0)

static void
lsquic_nn_was_quiet(void *cong_ctl, lsquic_time_t now, int in_flight)
{
    struct lsquic_nn *const nn = cong_ctl;
    LSQ_DEBUG("%s(nn, %" PRIu64 ")", __func__, now);
    nn->nn_epoch_start = 0;
}

static void
nn_update(void *cong_ctl, lsquic_time_t now_time, struct lsquic_packet_out *packet_out, unsigned n_bytes)
{
    struct lsquic_nn *const nn = cong_ctl;
    lsquic_time_t curr_time_ms = now_time; //没有计时的？
    float rtt = (float)(curr_time_ms - packet_out->po_sent);
    nn->min_rtt = min(nn->min_rtt, rtt);

    lsquic_time_t delay = rtt - nn->min_rtt;
    if (nn->delay_ewma == 0)
        nn->delay_ewma = delay;
    else
    {
        nn->delay_ewma = 0.875 * nn->delay_ewma + 0.125 * delay;
    }
    nn->delivered += n_bytes;
    nn->delivered_time = now_time;
    float delivery_rate = (0.008 * (nn->delivered - n_bytes) / //这一步有问题
                           max(1, nn->delivered_time - nn->ack_delivered_time));
    if (nn->delivered_rate_ewma == 0)
        nn->delivery_rate_ewma = delivery_rate;
    else
    {
        nn->delivery_rate_ewma = 0.875 * nn->delivered_rate_ewma + 0.125 * delivery_rate;
    }
    nn->curr_bytes[nn->curr_bytesno++]=n_bytes ;
    nn->curr_delay[nn->curr_delayno++]=delay;
    nn->send_rate = 0.008 * (nn->sent_bytes - nn->ack_sent_bytes) / max(1, rtt); //最后一部分。明早解决 lastsent
}

static void
lsquic_nn_ack(void *cong_ctl, struct lsquic_packet_out *packet_out,
              unsigned n_bytes, lsquic_time_t now_time, int app_limited)
{

    //更新数据
    struct lsquic_nn *const nn = cong_ctl;
    nn_update(cong_ctl, now_time, packet_out, n_bytes);
    if (nn->step_start_ms == 0)
        nn->step_start_ms = now_time;

    //    duration_ =now_time - nn->step_start_ms
    lsquic_time_t duration_ = now_time - nn->step_start_ms;
    if (duration_ > nn->step_len_ms) //若达到步长时间，调用模型，并保存数据到s,a,p等数组当中、
    {
        nn->s[0] = nn->delay_ewma / 100;
        nn->s[1] = nn->delivery_rate_ewma / 10;
        nn->s[2] = nn->send_rate_ewma / 10;
        nn->s[3] = nn->nn_cwnd / 200; //原本两种cwnd的区别是什么？
        nn->s[4] = duration_ / 100;
        int id=step(nn,duration_); //
         take_action(nn,id);
        nn->delay_ewma = 0;
        nn->delivery_rate_ewma = 0;
        nn->send_rate_ewma = 0;

        nn->step_start_ms = now_time;

        nn->step_cnt += 1;
        if (nn->step_cnt >= nn->max_steps)
        {
            //if nn->delivered > maximum_send_mb * 1000. * 1000.:
            nn->step_cnt = 0;
            nn->running = 0;
            nn->done = 1;
        }
    }
    if (nn->done || !nn->running)
    {
        tosave(cong_ctl);
    }
}
void saveh5(
    hid_t file_id,
    herr_t status,
    void* p,
    int rank,
    struct dim d,
    char* s) {
  hid_t dataspace_id;
  if (rank == 3) {
    hsize_t dims[3];
    dims[0] = d.d0;
    dims[1] = d.d1;
    dims[2] = d.d2;
    dataspace_id = H5Screate_simple(rank, dims, NULL);
  }
  if (rank == 2) {
    hsize_t dims[2];
    dims[0] = d.d0;
    dims[1] = d.d1;

    dataspace_id = H5Screate_simple(rank, dims, NULL);
  }
  if (rank == 1) {
    hsize_t dims[1];
    dims[0] = d.d0;

    dataspace_id = H5Screate_simple(rank, dims, NULL);
  }
  hid_t dataset_id; // 数据集本身的id
  dataset_id = H5Dcreate(
      file_id,
      s,
      H5T_NATIVE_FLOAT,
      dataspace_id,
      H5P_DEFAULT,
      H5P_DEFAULT,
      H5P_DEFAULT);

  status =
      H5Dwrite(dataset_id, H5T_NATIVE_FLOAT, H5S_ALL, H5S_ALL, H5P_DEFAULT, p);
  status = H5Dclose(dataset_id);
  status = H5Sclose(dataspace_id);
}
 void
tosave(void *cong_ctl)
{
    struct lsquic_nn *const nn = cong_ctl;
    if (nn->done)
    {
        r_batch[r_batchno++]=0;//.append(0);
    }
    else
    {
        s_batchno--;
        a_batchno--;
        p_batchno--;
        //s_batch = nn->s_batch.pop_back();
        //a_batch = nn->a_batch.pop_back();
        //p_batch = nn->p_batch.pop_back();
    }
    if (s_batchno > 0)
    {
        hid_t file_id;
        herr_t status;
        file_id = H5Fcreate("my_file_test.h5", H5F_ACC_TRUNC, H5P_DEFAULT, H5P_DEFAULT);
        struct  dim nodedim;
        
        nodedim.d0 = s_batchno;//no;
        nodedim.d1 = 5;
        nodedim.d2 = 8;
        float p[ s_batchno][5][8];
        for (int i = 0; i <  s_batchno; i++)
        {
            for (int j = 0; j < 5; j++)
            {
                for (int k = 0; k < 8; k++)
                {
                    p[i][j][k] =  s_batch[i].v[i][j];
                }
            }
        }
        saveh5(file_id, status, p, 3, nodedim, "/s");
        nodedim.d0 = r_batchno;
        float r_add[r_batchno];

        for (int i = 0; i < r_batchno; i++)
        {
            r_add[i] = r_batch[i];
        }
        saveh5(file_id, status, r_add, 1, nodedim, "/r");

        nodedim.d0 = a_batchno;
        nodedim.d1 = 7;
        float p2[a_batchno][7];
   
        for (int i = 0; i < a_batchno; i++)
        {
            for (int j = 0; j < 7; j++)
            {
                p2[i][j] = a_batch[i].v[j];
            }
        }
        saveh5(file_id, status, p2, 2, nodedim, "/a");
        for (int i = 0; i < p_batchno; i++)
        {
            for (int j = 0; j < 7; j++)
            {
                p2[i][j] = p_batch[i].v[j];
            }
        }
        saveh5(file_id, status, p2, 2, nodedim, "/p");

        status = H5Fclose(file_id);
    }
}
 int
step(void *cong_ctl,lsquic_time_t  duration)
{
    struct lsquic_nn *const nn = cong_ctl;
    for (int i = 0; i < 5; i++)
    {
        for (int j = 0; j < 7; j++)
            nn->state[i][j] = nn->state[i][j + 1];
    }
    for (int i = 0; i < 5; i++)
    {
        nn->state[i][7] = nn->s[i];
    }
    //调用模型得到概率，加噪音，得到act，保存到batch，计算reward
    //在里面修改值
    for(int i=0;i<5;i++)
    {
        for(int j=0;j<8;j++)
        {
            s_batch[s_batchno].v[i][j]=nn->state[i][j];
        }
    }
    s_batchno++;
  //   s_batch[s_batchno++].v=nn->state;
     getaction(nn);
//     float tmpmin = 9;
//     int act = 0;
//     for (int i = 0; i < action_probno; i++)
//     {
//         if (tmpmin > action_prob[i])
//         {
//             tmpmin = action_prob[i];
//             act = i;
//         }
//     }
//     node2 action_vec;
//     for (int i = 0; i < 7; i++)
//         action_vec.v[i] = 0;
//     action_vec.v[act] = 1;
//   nn->s_batch[++]=nn->state));
//   nn->a_patch[++]=action_vec);
//   nn->p_patch[++]=action_prob);

  //计算reward
  // compute reward

  //     cum_bytes = np.sum(securr_bytes)
  //     // bytes / 1000 / ms -> kb / ms -> mb / s
  //     _throughput = 0.008 * cum_bytes / (duration + 1e-6)
  //     _delay = np.mean(nn->curr_delay)
  //     _delay_max = 1000.
  //     _throughput_max = 100.
  //     // ocra loss
  //     _reward = (_throughput / (_delay + 1e-6)) / (_throughput_max / _delay_max)
  //     // _reward = 8. * _throughput - 5. * _delay / 1000.
  //    // that's the previous reward
  //     nn->r_batch.append([_reward])



  
  int cum_bytes = 0;
  for (int i = 0; i < nn->curr_bytesno; i++)
  {
      cum_bytes += nn->curr_bytes[i];
  }
  int _throughput = 0.008 * cum_bytes / (duration + 1e-6);
  float sum=0;
  for(int i=0;i<nn->curr_delayno;i++)
  {
      sum+=nn->curr_delay[i];
  }
//   float sum =
//       accumulate(begin(curr_delay), std::end(curr_delay), 0.0);
  float _delay = 1.0*sum / nn->curr_delayno;
  int _delay_max = 1000;
  int _throughput_max = 10;
  float _reward =
      1.0 * (_throughput / (_delay + 1e-6)) / (_throughput_max / _delay_max);
  r_batch[r_batchno++]=_reward;
nn->curr_bytesno=0;
nn->curr_delayno=0;
//   //   float r_add[r_batchno];
//   //    for (int i = 0; i < r_batchno; i++) {
//   //     r_add[i] = r[i];
//   //   }
//   //清空
//   nn->curr_bytes.clear();
//   nn->curr_delay.clear();
}
 void
take_action(void *cong_ctl, int action_idx)
{
    struct lsquic_nn *const nn = cong_ctl;
    nn->nn_cwnd = (1 + nn->ACTIONS[action_idx]) * nn->nn_cwnd;

    nn->nn_cwnd = max(2, min(nn->nn_cwnd, 1000.0)); //np.clip(nn->nn_cwnd, 2.0, 1000.0);
}
static void
lsquic_nn_loss(void *cong_ctl)
{
    struct lsquic_nn *const nn = cong_ctl;
    LSQ_DEBUG("%s(nn)", __func__);
    nn->nn_epoch_start = 0;
    if (FAST_CONVERGENCE && nn->nn_cwnd < nn->nn_last_max_cwnd)
        nn->nn_last_max_cwnd = nn->nn_cwnd * TWO_MINUS_BETA_OVER_TWO / 1024;
    else
        nn->nn_last_max_cwnd = nn->nn_cwnd;
    nn->nn_cwnd = nn->nn_cwnd * ONE_MINUS_BETA / 1024;
 
    nn->nn_ssthresh = nn->nn_cwnd;
    LSQ_INFO("loss detected, last_max_cwnd: %lu, cwnd: %lu",
             nn->nn_last_max_cwnd, nn->nn_cwnd);
    LOG_CWND(nn);
}

static void
lsquic_nn_timeout(void *cong_ctl)
{
    struct lsquic_nn *const nn = cong_ctl;
    unsigned long cwnd;

    cwnd = nn->nn_cwnd;
    LSQ_DEBUG("%s(nn)", __func__);
    nn_reset(nn);
    nn->nn_ssthresh = cwnd / 2;
   
    nn->nn_cwnd = 2 * TCP_MSS;
    LSQ_INFO("timeout, cwnd: %lu", nn->nn_cwnd);
    LOG_CWND(nn);
}

static void
lsquic_nn_cleanup(void *cong_ctl)
{
}

static int
lsquic_nn_get_cwnd(void *cong_ctl)
{
    struct lsquic_nn *const nn = cong_ctl;
    return nn->nn_cwnd;
}

static int
in_slow_start(void *cong_ctl)
{
    struct lsquic_nn *const nn = cong_ctl;
    return nn->nn_cwnd < nn->nn_ssthresh;
}

static int
lsquic_nn_pacing_rate(void *cong_ctl, int in_recovery)
{
    struct lsquic_nn *const nn = cong_ctl;
    int bandwidth, pacing_rate;
    lsquic_time_t srtt;

    srtt = lsquic_rtt_stats_get_srtt(nn->nn_rtt_stats);
    if (srtt == 0)
        srtt = 50000;
    bandwidth = nn->nn_cwnd * 1000000 / srtt;
    if (in_slow_start(nn))
        pacing_rate = bandwidth * 2;
    else if (in_recovery)
        pacing_rate = bandwidth;
    else
        pacing_rate = bandwidth + bandwidth / 4;

    return pacing_rate;
}
/*
两个地方

ack的位置，每次ack都要更新数据，
若达到步长时间，调用模型，并保存数据到s,a,p等数组当中、
然后达到300次的时候进行保存数据到h5当中，如果超时则结束进行保存

sent的位置。修改相关数据


*/

//处理发送的问题

/* static void
lsquic_nn_sent (void *cong_ctl, struct lsquic_packet_out *packet_out,
                                        int in_flight, int app_limited)
{
    struct lsquic_nn *const nn = cong_ctl;
     unsigned short sent_sz;
      sent_sz = lsquic_packet_out_sent_sz(nn->nn_conn, packet_out);
     nn->sent_bytes+= sent_sz ;

    /* Obviously we make an assumption that sent packet number are always
     * increasing.
     */
//     nn->nn_last_sent_packno = packet_out->po_packno;

//     if (app_limited)
//         nn_app_limited(nn, in_flight);
// }

// 每次接到ack都要进行一次
//计算时间
/* static void
lsquic_nn_update()
{
    //计算相应数据，满300次保存到h5一次
    lsquic_time_t delay=rtt-nn->min_rtt;
    if (nn->delay_ewma==0)
        nn->delay_ewma=delay;
    else
    {
        nn->delay_ewma = 0.875 * nn->delay_ewma + 0.125 * delay;

    }
    nn->delivered += n_bytes;
    nn->delivered_time = now_time;
     float delivery_rate = (0.008 * (nn->delivered - n_bytes) /                //这一步有问题
                         max(1, nn->delivered_time - nn.lastdelivered_time));
      if (nn->delivered_rate_ewma==0)
        nn->delivery_rate_ewma= delivery_rate;
    else
    {
        nn->delivery_rate_ewma = 0.875 * nn->delivered_rate_ewma + 0.125 *  delivery_rate;

    }
    nn->curr_bytes[nn->curr_bytesno++]=n_bytes;
    nn->curr_delay[nn->curr_delay++]=delay;
    nn->send_rate = 0.008 * (nn->sent_bytes - nn->lastsent_bytes) / max(1, rtt)//最后一部分。明早解决 lastsent
    //调用tf,得到状态

    //继续保存，更新cwnd
}
 */
const struct cong_ctl_if lsquic_cong_nn_if =
    {
        .cci_ack = lsquic_nn_ack,
        .cci_cleanup = lsquic_nn_cleanup,
        .cci_get_cwnd = lsquic_nn_get_cwnd,
        .cci_init = lsquic_nn_init,
        .cci_pacing_rate = lsquic_nn_pacing_rate,
        .cci_loss = lsquic_nn_loss,
        .cci_reinit = lsquic_nn_reinit,
        .cci_timeout = lsquic_nn_timeout,
        .cci_was_quiet = lsquic_nn_was_quiet,
};
