#!/bin/bash

# Load Anaconda Module
module load anaconda3/2022.05-x86_64 

# Call your script as you would from the command line, passing in $1 and $2 as arugments
# Note that $1 and $2 are the arguments passed into this script
python top5overall_reduce.py $1 $2
