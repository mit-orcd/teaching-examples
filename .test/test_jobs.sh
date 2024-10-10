#!/bin/bash

#date_time=$(date +"%F-%T")
date_time=$1
script_dir=$(pwd)
outdir="$script_dir/output" #tmp #output
outfile="$outdir/jobs.$date_time"
errfile="$outdir/error.$date_time"
split="================================================================"


echo $split >>$outfile
hostname >>$outfile

while IFS= read -r line; do
    workdir="$script_dir/$line"
    echo "Testing $line Folder"
    echo "Testing $line Folder" >>$outfile
    # cd $workdir 
    for job_file in $(find . -type f -name "*.sh"); do
        echo "Running script: $job_file"
        echo "Found script: $job_file" >>$outfile


        # Submit the job to the cluster
        job_id=$(sbatch -p mit_normal $job_file | awk '{print $4}')

        # Check if the job ID was generated
        if [[ -z $job_id ]]; then
            echo "Job submission failed for $job_file: job_id is empty" >>$errfile
            echo "Job Submitted Failed"
            continue
        fi

        echo "Job Submitted"
        echo "Job $job_id submitted for $job_file" >>$outfile

        # Wait for the job to finish
        echo "Waiting for job to finish..."
        while [[ $(squeue -j $job_id | wc -l) -gt 1 ]]; do
            sleep 2
        done
        
        # Check the job output for failures
        jobfailed=$(sacct -j $job_id -o State | grep -c -m 1 FAILED)
        if [[ $jobfailed -eq 0 ]]; then
            echo "Job completed successfully"
            echo "Job $job_id for $job_file completed successfully" >>$outfile
        else
            echo "Job failed"
            echo "Job $job_id for $job_file failed" >>$errfile
            echo "Error in $job_file. Check slurm-$job_id.out for details" >>$errfile
        fi
    done
done < test_dirs