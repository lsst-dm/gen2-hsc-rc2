#!/bin/bash -l

#SBATCH -p normal
#SBATCH -N 1
#SBATCH --ntasks-per-node=17
#SBATCH --time=1800
#SBATCH -J VVDS_I1_compareVisit.conf

srun --output /project/hsc_rc2/qaLogs2/compareVisitAnalysis-9697-VVDS_I-%j-%2t.out --ntasks=17 --multi-prog VVDS_I1_compareVisit.conf
