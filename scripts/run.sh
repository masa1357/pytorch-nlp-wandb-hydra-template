#!/bin/sh

WANDB_PROJECT='template'
WANDB_ENTITY='youngerous'

CKPT_ROOT='/repo/pytorch-nlp-wandb-hydra-template/src/checkpoints/'
EPOCH=1
BATCH_SIZE=16
LR='5e-5'
GPU='ddp'
AMP='True'

python src/main.py\
    ckpt_root=$CKPT_ROOT\
    epoch=$EPOCH\
    batch_size=$BATCH_SIZE\
    lr=$LR\
    amp=$AMP\
    +wandb.project=$WANDB_PROJECT\
    +wandb.entity=$WANDB_ENTITY\
    +gpu=$GPU\

