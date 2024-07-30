#!/bin/bash

# Load the Anaconda Module
module load anaconda3/2022.05-x86_64 

# Specify Input File
INPUT_FILE=../data/fibonacci/inputFile_10

# Run the Wrapper Script
python wrapper.py $INPUT_FILE
