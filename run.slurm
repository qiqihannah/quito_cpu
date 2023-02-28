#!/bin/bash
#SBATCH -p dgx2q
#SBATCH --job-name=Quito
#SBATCH -n 10
#SBATCH --time 00-1:00:00    # time (D-HH:MM:SS)
module purge
module load slurm/20.02.7
source /home/xinyi/anaconda3/bin/activate quito_cpu
export PYTHONPATH=root_path:$PYTHONPATH
python /home/xinyi/quito_cpu/quito_test.py
