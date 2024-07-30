#!/bin/bash

# Load Julia Module
module load julia/1.9.1

# Call your script as you would from the command line
cd ../../../../Julia/word_count/Serial
julia top5overall.jl
