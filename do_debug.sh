#!/bin/bash
# 0c3adcfe585b9e58e42e0d236cdd8a915980db4f
CUDA_LAUNCH_BLOCKING=1 lm_eval --model hf \
    --model_args "pretrained=answerdotai/ModernBERT-base,is_encoder=True,truncation=True" \
    --tasks "sciq" \
    --device cuda \
    --batch_size auto:4 \
    --log_samples \
    --trust_remote_code \
    --output_path results/
