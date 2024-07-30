#!/bin/bash

# Slurm sbatch options
#SBATCH -o top5norm_forkjoin_sendrecv.log-%j
#SBATCH -n 4

# Load Julia and MPI Modules
module load julia/1.9/1
module load gcc/12.2.0-x86_64 
module load openmpi/4.1.4-pmi-cuda-ucx-x86_64

# Call your script as you would from the command line
cd ../../../../../Julia/word_count/Parallel/mpi
mpirun julia top5norm_forkjoin_sendrecv.jl
