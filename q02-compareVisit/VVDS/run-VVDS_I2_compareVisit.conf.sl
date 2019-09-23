#!/bin/bash -l

#SBATCH -p normal
#SBATCH -N 1
#SBATCH --ntasks-per-node=16
#SBATCH --time=1800
#SBATCH -J VVDS_I2_compareVisit.conf

srun --output /project/hsc_rc2/qaLogs2/compareVisitAnalysis-9697-VVDS_I-%j-%2t.out --ntasks=16 --multi-prog VVDS_I2_compareVisit.conf
