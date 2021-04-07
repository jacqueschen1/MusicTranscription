#!bin/bash

DATASET_DIR="/local/maestro-v2/"

# Modify to your workspace
<<<<<<< HEAD
WORKSPACE="/local/CFP_hdf5/"
=======
WORKSPACE="/content/drive/MyDrive/532Project/workspace2/"
>>>>>>> dfb03588ce0c81111a89fb63b1a87f069ccc74d9

python3 pytorch/main.py train --workspace=$WORKSPACE --model_type='Regress_onset_offset_frame_velocity_CRNN' --loss_type='regress_onset_offset_frame_velocity_bce' --augmentation='none' --max_note_shift=0 --batch_size=6 --learning_rate=5e-4 --reduce_iteration=10000 --resume_iteration=0 --early_stop=300000 --cuda
