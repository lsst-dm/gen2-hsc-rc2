#!/bin/bash -l

#SBATCH -p normal
#SBATCH -N 1
#SBATCH --ntasks-per-node=24
#SBATCH --time=1800
#SBATCH -J VVDS_Z1_compareVisit.conf

srun --output /project/hsc_rc2/qaLogs2/compareVisitAnalysis-9697-VVDS_Z-%j-%2t.out --ntasks=24 --multi-prog VVDS_Z1_compareVisit.conf
