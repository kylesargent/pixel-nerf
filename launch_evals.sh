#!/bin/bash
# mipnerf360 worldscale: .3
# dtu worldscale: .5

CUDA_VISIBLE_DEVICES=0
for worldscale in .4 .5 .6 .7 .8
do
    python eval/eval.py -D rs_dtu_4 --checkpoints_path /home/jupyter/pixelnerf_exps/exps/checkpoints --split val -n 1693453463_mix_datasets_exp \
        -c /home/jupyter/pixelnerf_exps/conf/exp/dtu.conf -P '25' -O eval_out_zeroshot_withlpips_worldscale$worldscale/dtu_1v --manual_worldscale $worldscale
done

# CUDA_VISIBLE_DEVICES=1
# for worldscale in .3 .4 .5 .6 .7
# do
#     python eval/eval.py -D rs_dtu_4 --checkpoints_path /home/jupyter/pixelnerf_exps/exps/checkpoints --split val -n 1693453463_mix_datasets_exp \
#             -c /home/jupyter/pixelnerf_exps/conf/exp/dtu.conf -P '25' -O eval_out_zeroshot_mipnerf360_withlpips_worldscale$worldscale/dtu_1v --manual_worldscale $worldscale \
#             --use_mipnerf360
# done