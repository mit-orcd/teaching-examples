#!/bin/bash

#SBATCH -o submit_each.sh.log-%j
#SBATCH -p mit_normal

# Load Julia Module
module load julia/1.10.4

# Call your script as you would from the command line
julia top5each.jl
