#!/bin/bash -l

#SBATCH -p normal
#SBATCH -N 1
#SBATCH --ntasks-per-node=22
#SBATCH --time=1800
#SBATCH -J VVDS_R_compareVisit.conf

srun --output /project/hsc_rc2/qaLogs2/compareVisitAnalysis-9697-VVDS_R-%j-%2t.out --ntasks=22 --multi-prog VVDS_R_compareVisit.conf
