#!/bin/bash -l

#SBATCH -p normal
#SBATCH -N 1
#SBATCH --ntasks-per-node=1
#SBATCH --time=900
#SBATCH -J comCoadd9615-HSC-Z
#SBATCH --output=/datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/qaLogs/compareCoaddAnalysis/compareCoaddAnalysis-9615-HSC-Z-%j.log
#SBATCH --error=/datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/qaLogs/compareCoaddAnalysis/compareCoaddAnalysis-9615-HSC-Z-%j.log

srun compareCoaddAnalysis.py /datasets/hsc/repo --calib /datasets/hsc/repo/CALIB --rerun RC/w_2019_38/DM-21386 --rerun2 RC/w_2019_34/DM-21091 --no-versions --id tract=9615 filter=HSC-Z

