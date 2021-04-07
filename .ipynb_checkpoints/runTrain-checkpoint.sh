#!bin/bash

DATASET_DIR="/local/maestro-v2/"

# Modify to your workspace
WORKSPACE="/local/CFP_hdf5/"

python3 pytorch/main.py train --workspace=$WORKSPACE --model_type='Regress_onset_offset_frame_velocity_CRNN' --loss_type='regress_onset_offset_frame_velocity_bce' --augmentation='none' --max_note_shift=0 --batch_size=6 --learning_rate=5e-4 --reduce_iteration=10000 --resume_iteration=0 --early_stop=300000 --cuda
