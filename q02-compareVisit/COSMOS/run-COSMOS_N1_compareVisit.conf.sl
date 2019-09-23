#!/bin/bash -l

#SBATCH -p normal
#SBATCH -N 1
#SBATCH --ntasks-per-node=24
#SBATCH --time=1000
#SBATCH -J COSMOS_N1_compareVisit.conf


srun --output /project/hsc_rc2/qaLogs2/compareVisitAnalysis-9813-COSMOS-%j-%2t.out --ntasks=24 --multi-prog COSMOS_N1_compareVisit.conf
