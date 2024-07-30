#!/bin/bash

# Scheduler Options
#SBATCH -o myout.log-%A-%a
#SBATCH -a 1-4

# Load Anaconda module
module load anaconda3/2022.05-x86_64 

# Specify Input File
INPUT_FILE=../data/fibonacci/inputFile_200

echo "My SLURM_ARRAY_TASK_ID: " $SLURM_ARRAY_TASK_ID
echo "Number of Tasks: " $SLURM_ARRAY_TASK_COUNT

# Run the Wrapper Script
python ../C-Cpp/Fibonacci/Serial/wrapper.py $INPUT_FILE $SLURM_ARRAY_TASK_ID $SLURM_ARRAY_TASK_COUNT
