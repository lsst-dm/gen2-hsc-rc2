#!/bin/bash -l

#SBATCH -p normal
#SBATCH -N 1
#SBATCH --ntasks-per-node=13
#SBATCH --time=1000
#SBATCH -J GAMA_I1_compareVisit.conf


srun --output /project/hsc_rc2/qaLogs2/compareVisitAnalysis-9615-GAMA_I-%j-%2t.out --ntasks=13 --multi-prog GAMA_I1_compareVisit.conf
