/* Copyright (c) 2017 - 2021 LiteSpeed Technologies Inc.  See LICENSE. */
/*
 * lsquic_adaptive_cc.h -- Adaptive congestion controller
 *
 * The controller begins using BBRv1, but keeps Cubic state as well.
 * When RTT is known, we pick either Cubic (small RTT) or BBRv1 (large
 * RTT).
 */
#include "lsquic_nn.h"
#ifndef LSQUIC_ADAPTIVE_CC_H
#define LSQUIC_ADAPTIVE_CC_H 1

struct adaptive_cc
{
    struct lsquic_cubic     acc_cubic;
    struct lsquic_bbr       acc_bbr;
    struct lsquic_nn       acc_nn;
    enum {
        ACC_CUBIC,  /* If set, use Cubic; otherwise, use BBR */
    }                       acc_flags;
};

extern const struct cong_ctl_if lsquic_cong_adaptive_if;

#endif
