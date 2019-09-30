#!/bin/bash -l

#SBATCH -p normal
#SBATCH -N 1
#SBATCH --ntasks-per-node=1
#SBATCH --time=900
#SBATCH -J coAna9813-HSC-Y
#SBATCH --output=/datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/qaLogs/coaddAnalysis/coaddAnalysis-9813-HSC-Y-%j.log
#SBATCH --error=/datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/qaLogs/coaddAnalysis/coaddAnalysis-9813-HSC-Y-%j.log

srun coaddAnalysis.py /datasets/hsc/repo/ --calib /datasets/hsc/repo/CALIB  --rerun RC/w_2019_38/DM-21386  --id tract=9813 filter=HSC-Y --no-versions -c doWriteParquetTables=True

