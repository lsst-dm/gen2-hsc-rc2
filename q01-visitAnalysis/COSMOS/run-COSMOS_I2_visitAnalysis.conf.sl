#!/bin/bash -l

#SBATCH -p normal
#SBATCH -N 1
#SBATCH --ntasks-per-node=9 
#SBATCH --time=1800
#SBATCH -J COSMOS_I2_visitAnalysis.conf


srun --output /project/hsc_rc2/qaLogs1/visitAnalysis-9813-COSMOS-%j-%2t.out --ntasks=9  --multi-prog COSMOS_I2_visitAnalysis.conf
