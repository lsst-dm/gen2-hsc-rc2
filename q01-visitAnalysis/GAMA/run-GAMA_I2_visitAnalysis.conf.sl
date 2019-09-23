#!/bin/bash -l

#SBATCH -p normal
#SBATCH -N 1
#SBATCH --ntasks-per-node=2 
#SBATCH --time=1800
#SBATCH -J GAMA_I2_visitAnalysis.conf


srun --output /project/hsc_rc2/qaLogs1/visitAnalysis-9615-GAMA_I-%j-%2t.out --ntasks=2  --multi-prog GAMA_I2_visitAnalysis.conf
