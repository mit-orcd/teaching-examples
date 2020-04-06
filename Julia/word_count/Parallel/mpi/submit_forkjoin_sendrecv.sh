#!/bin/bash

# Slurm sbatch options
#SBATCH -o top5norm_forkjoin.log-%j
#SBATCH -n 4


# Initialize Modules
source /etc/profile

# Load Julia and MPI Modules
module load julia/1.1.1
module load mpi/openmpi-4.0

# Call your script as you would from the command line
mpirun julia top5norm_forkjoin_sendrecv.jl
