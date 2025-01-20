#!/bin/bash
# 0c3adcfe585b9e58e42e0d236cdd8a915980db4f
CUDA_LAUNCH_BLOCKING=1 lm_eval --model hf \
    --model_args "pretrained=orionweller/enc-150m-hf,is_encoder=True,add_bos_token=True,revision=step2999" \
    --tasks "sciq" \
    --device cuda \
    --batch_size 1 \
    --log_samples \
    --trust_remote_code \
    --output_path results/
