#!/bin/bash

# Slurm sbatch options
#SBATCH -o top5norm_MapReduce.log-%j
#SBATCH -n 4

# Load Anaconda and MPI module
module load anaconda3/2022.05-x86_64   
module load gcc/12.2.0-x86_64  
module load openmpi/4.1.4-pmi-cuda-ucx-x86_64

# Call your script as you would from the command line
cd ../../../../Python/word_count/Parallel/mpi4py
mpirun python top5norm_MapReduce.py
