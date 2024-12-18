#!/bin/bash

deepspeed --include localhost:6,7 --master_port 60336 train_mvtec.py \
    --model openllama_peft \
    --stage 1\
    --imagebind_ckpt_path ../pretrained_ckpt/imagebind_ckpt/imagebind_huge.pth\
    --image_root_path ../data/images/\
    --save_path  ./ckpt/train_mvtec/\
    --log_path ./ckpt/train_mvtec/log_rest/
