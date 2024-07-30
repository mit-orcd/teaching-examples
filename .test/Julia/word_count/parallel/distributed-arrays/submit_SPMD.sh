#!/bin/bash

# Slurm sbatch options
#SBATCH -o top5norm_SPMD.log-%j
#SBATCH -n 4

#Load Julia module
module load julia/1.9.1

# Call your script as you would from the command line
cd ../Julia/word_count/Parallel/distributed_arrays
julia top5norm_SPMD.jl
