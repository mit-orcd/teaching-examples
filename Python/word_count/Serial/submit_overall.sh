#!/bin/bash

#SBATCH -o submit_overall.sh.log-%j

# Load Anaconda Module
module load miniforge

# Call your script as you would from the command line
python top5overall.py
