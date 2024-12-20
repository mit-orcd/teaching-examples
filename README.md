# Teaching Examples

This repository contains several examples for learning how to write scalable code in various languages and how to submit that code on an HPC System. Please note that Engaging is available for MIT researchers.  This example was adapted with Engaging in mind, and so the instructions for compiling may be different for your system. Keep in mind that your system may use a different scheduler or may require additional Slurm options to submit effectively.

Engaging uses Slurm as a scheduler, and so submission scripts and instructions in these examples use Slurm. If you are intending to use these on another system you may need to add additional submission flags, create new submission scripts or submit them differently. Please refer to the documentation for your system and adjust accordingly.

We have organized these examples first by language, then by type (serial, throughput/job array, map reduce, fully parallel), and finally by example problem. Data used by multiple examples sits in the top level directory, and supporting scripts used by multiple examples reside at the Language level. The paths in the examples reflect this directory structure.

To run the examples you have a few options:

1. **Engaging Only**: Copy these examples to your home directory from the shared location:
    1. Log into the system
    2. Run: `cp -r /orcd/examples/001/teaching-examples ~`
1. **Any system with git installed**: Use git clone to clone the repository onto the system where you want to run the examples
    1. In a terminal window, log into the system where you want the examples:
    2. Run: `git clone https://github.com/mit-orcd/teaching-examples.git`