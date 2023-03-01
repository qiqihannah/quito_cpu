#!/bin/bash
#SBATCH -p dgx2q
#SBATCH --job-name=Quito
#SBATCH -n 10
#SBATCH --time 00-1:00:00    # time (D-HH:MM:SS)
module purge
module load slurm/20.02.7
module use module use /cm/shared/ex3-qc-modules/modulefiles
module load quito/quito-py311-1.0.3
export PYTHONPATH=root_path:$PYTHONPATH
python /home/xinyi/quito_cpu/quito_test.py
