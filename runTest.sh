#!bin/bash

DATASET_DIR="/content/drive/MyDrive/maestro/dataset_root"

# Modify to your workspace
# WORKSPACE="/content/drive/MyDrive/532Project/workspace3"
MODEL_TYPE="Note_pedal"
#$CHECKPOINT_PATH ="/content/drive/MyDrive/532Project/workspace3/checkpoints/main/Regress_onset_offset_frame_velocity_CRNN/loss_type=regress_onset_offset_frame_velocity_bce/augmentation=none/max_note_shift=0/batch_size=1/100_iterations.pth"

# ============ Evaluate (optional) ============
# Inference probability for evaluation
# python3 pytorch/combine_note_and_pedal_models.py --note_checkpoint_path="/content/drive/MyDrive/150000_iterations.pth"  --output_checkpoint_path="/content/drive/MyDrive/150000_iterations_combined.pth"
python3 pytorch/inference.py --model_type=$MODEL_TYPE --checkpoint_path="/content/drive/MyDrive/150000_iterations_combined.pth" --audio_path="/content/drive/MyDrive/532Project/maestro_full/maestro-v2.0.0/2008/MIDI-Unprocessed_02_R1_2008_01-05_ORIG_MID--AUDIO_02_R1_2008_wav--1.wav" --cuda
# # # Calculate metrics
#python3 pytorch/calculate_score_for_paper.py infer_prob --workspace=$WORKSPACE --model_type='Note_pedal' --checkpoint_path="/content/drive/MyDrive/532Project/workspace3/checkpoints/main/Regress_onset_offset_frame_velocity_CRNN/loss_type=regress_onset_offset_frame_velocity_bce/augmentation=none/max_note_shift=0/batch_size=1/100_iterations.pth" --augmentation='aug' --dataset='maestro' --split='test' --cuda
#python3 pytorch/calculate_score_for_paper.py calculate_metrics --workspace=$WORKSPACE --model_type='Note_pedal' --augmentation='aug' --dataset='maestro' --split='test'