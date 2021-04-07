#!bin/bash

DATASET_DIR="/local/maestro-v2/maestro-v2.0.0"

# Modify to your workspace
WORKSPACE="/local/CFP_hdf5"

python3 utils/features.py pack_maestro_dataset_to_hdf5 --dataset_dir=$DATASET_DIR --workspace=$WORKSPACE

