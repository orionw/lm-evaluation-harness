#!/bin/bash
#     --tasks "winogender_gotcha_male,winogender_gotcha_female" \
# 0c3adcfe585b9e58e42e0d236cdd8a915980db4f
CUDA_LAUNCH_BLOCKING=1 lm_eval --model hf \
    --model_args "pretrained=jhu-clsp/ettin-enc-from-dec-68m,is_encoder=True,add_bos_token=True,uses_mtnp=True" \
    --tasks "triviaqa" \
    --device cuda \
    --batch_size 1 \
    --log_samples \
    --trust_remote_code \
    --output_path results/
