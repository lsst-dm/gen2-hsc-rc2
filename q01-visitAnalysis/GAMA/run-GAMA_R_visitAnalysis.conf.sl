#!/bin/bash -l

#SBATCH -p normal
#SBATCH -N 1
#SBATCH --ntasks-per-node=17
#SBATCH --time=1800
#SBATCH -J GAMA_R_visitAnalysis.conf


srun --output /project/hsc_rc2/qaLogs1/visitAnalysis-9615-GAMA_R-%j-%2t.out --ntasks=17 --multi-prog GAMA_R_visitAnalysis.conf
