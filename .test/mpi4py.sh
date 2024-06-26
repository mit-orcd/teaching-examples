python3 -m venv .venv
source .venv/bin/activate
pip install numpy mpi4py
cd Python/word_count/Parallel/mpi4py/
mpirun -np 4 python top5norm_forkjoin.py 
mpirun -np 4 python top5norm_MapReduce.py
mpirun -np 4 python top5norm_SPMD.py