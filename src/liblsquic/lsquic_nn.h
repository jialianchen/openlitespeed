/*
总体逻辑
1 寻找需要的变量
2 基于nn改还是nn?
3 最后一步比较简单，只是简单调用


1 确定一下要得到的变量

每次收到ack进行更新，判断是否到了更新的时间. 然后就是找到每个值
1. rtt 当前时间减去发送时间
2.延迟，rtt减去最小rtt
3.已发送的数据量
4 发送数率
5 
  s = [self.delay_ewma / 100.,
                     self.delivery_rate_ewma / 10.,       已送达      delivery_rate = (0.008 * (self.delivered - ack.delivered) / max(1, self.delivered_time - ack.delivered_time))
                     self.send_rate_ewma / 10.,          已发送  send_rate = 0.008 * (self.sent_bytes - ack.sent_bytes) / max(1, rtt)

                     self.cwnd / 200.,
                     duration_ / 100.]                   duration_ = self.nnrr_ts_ms() - self.step_start_ms


   rtt = float(nnrr_time_ms - ack.send_ts) 
   delay = rtt - self.min_rtt
   if self.delay_ewma is None:
            self.delay_ewma = delay
        else:
            self.delay_ewma = 0.875 * self.delay_ewma + 0.125 * delay

  self.delivered += ack.ack_bytes
  self.delivered_time = nnrr_time_ms
  delivery_rate = (0.008 * (self.delivered - ack.delivered) / max(1,
self.delivered_time - ack.delivered_time)) 即totalBytesSentThen; if
self.delivery_rate_ewma is None: self.delivery_rate_ewma = delivery_rate else:
            self.delivery_rate_ewma = (
                0.875 * self.delivery_rate_ewma + 0.125 * delivery_rate)
 send_rate = 0.008 * (self.sent_bytes - ack.sent_bytes) / max(1, rtt)
 LossState.totalBytesSent
 用这个去保存
   s = [self.delay_ewma / 100.,
                     self.delivery_rate_ewma / 10.,
                     self.send_rate_ewma / 10.,
                     self.cwnd / 200.,
                     duration_ / 100.]

*/


  //接下来，把信息存到h5，用作训练
  // vector没问题，每次增加一个
  // 最后的s格式是，300*5*8，维护一个vector，里面是一个二维数组，5种数据，长度为8，滚动更新如何做到？
  //先O(8)的更新吧
  // 300*1的
  // 300*7的概率
  // 300*7的动作
  // 5种数据
  //


//#include "hdf5.h" //引入h5的处理文件

#ifndef LSQUIC_NN_H
#define LSQUIC_NN_H 1
struct lsquic_conn;
struct node
{
  float v[5][8];
  /* data */
};
struct  node2
{
  float v[7];
};
 
  struct node s_batch[305];
  struct node2 a_batch[305];
  struct node2 p_batch[305];
 float r_batch[305];
int s_batchno;
int a_batchno;
int p_batchno;
int r_batchno;

  struct lsquic_nn
{
    uint64_t    nn_min_delay;
    uint64_t    nn_epoch_start;
    uint64_t    time_out;
    uint64_t    step_len_ms;
        uint64_t   step_start_ms ;
    float ACTIONS[7];
    float state[5][8];


    // std::vector<node>s_batch;
    // std::vector<node2>a_batch;
    // std::vector<node2>p_batch;
    // std::vector<node2>r_batch;
    // std::vector<node2>a_batch;
  
    float s[5];
    

  
   
float min_rtt;
float send_rate;
    float delay_ewma;
    float delivery_rate_ewma;
    float send_rate_ewma ;
    float  duration;
    float delivered ;
    float delivered_time;
    float ack_delivered_time;
   float  delivered_rate_ewma;
float sent_bytes ;
float  ack_sent_bytes;
int curr_bytesno;
int curr_delayno;
float curr_delay[305];
float curr_bytes[305];

    int step_cnt;
     int  max_steps;
     int running;
     int  done;
     double         nn_K;
    unsigned long   nn_origin_point;
    unsigned long   nn_last_max_cwnd;
    unsigned long   nn_cwnd;
  
    unsigned long   nn_ssthresh;
    const struct lsquic_conn
                   *nn_conn;            /* Used for logging */
    const struct lsquic_rtt_stats
                   *nn_rtt_stats;
    enum nn_flags {
        NN_TCP_FRIENDLY = (1 << 0),
    }               nn_flags;
    unsigned        nn_sampling_rate;
    uint64_t    nn_last_logged;

};

  // struct dim {
  // hsize_t d0, d1, d2;
  // } ;
#define TCP_MSS 1460
#define DEFAULT_CUBIC_FLAGS (NN_TCP_FRIENDLY)
extern const struct cong_ctl_if lsquic_cong_nn_if;
//void
//lsquic_nn_set_flags (struct lsquic_nn *nn, enum nn_flags flags);

#endif