#!bin/bash

DATASET_DIR="/content/drive/MyDrive/532Project/maestro_full/maestro-2004/"

# Modify to your workspace
WORKSPACE="/content/drive/MyDrive/532Project/workspaceOrigCfp4/"

python3 utils/features.py pack_maestro_dataset_to_hdf5 --dataset_dir=$DATASET_DIR --workspace=$WORKSPACE

