#!/bin/bash -l

#SBATCH -p normal
#SBATCH -N 1
#SBATCH --ntasks-per-node=1
#SBATCH --time=1000
#SBATCH -J color9697
#SBATCH --output=/datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/qaLogs/colorAnalysis/colorAnalysis-9697-%j.log
#SBATCH --error=/datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/qaLogs/colorAnalysis/colorAnalysis-9697-%j.log

srun colorAnalysis.py /datasets/hsc/repo/ --calib /datasets/hsc/repo/CALIB --rerun RC/w_2019_38/DM-21386  --id tract=9697 filter=HSC-G^HSC-R^HSC-I^HSC-Z^HSC-Y --no-versions -c doWriteParquetTables=True

