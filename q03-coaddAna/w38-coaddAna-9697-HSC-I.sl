#!/bin/bash -l

#SBATCH -p normal
#SBATCH -N 1
#SBATCH --ntasks-per-node=1
#SBATCH --time=900
#SBATCH -J coAna9697-HSC-I
#SBATCH --output=/datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/qaLogs/coaddAnalysis/coaddAnalysis-9697-HSC-I-%j.log
#SBATCH --error=/datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/qaLogs/coaddAnalysis/coaddAnalysis-9697-HSC-I-%j.log

srun coaddAnalysis.py /datasets/hsc/repo/ --calib /datasets/hsc/repo/CALIB  --rerun RC/w_2019_38/DM-21386  --id tract=9697 filter=HSC-I --no-versions -c doWriteParquetTables=True

