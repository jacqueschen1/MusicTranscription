#!bin/bash

DATASET_DIR="/content/drive/MyDrive/532Project/"

# Modify to your workspace
WORKSPACE="/content/workspace/"

python3 utils/features.py pack_maestro_dataset_to_hdf5 --dataset_dir=$DATASET_DIR --workspace=$WORKSPACE

