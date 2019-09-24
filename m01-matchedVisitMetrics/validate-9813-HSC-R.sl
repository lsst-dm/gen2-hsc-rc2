#!/bin/bash -l

#SBATCH -p normal
#SBATCH -N 1
#SBATCH --ntasks-per-node=1
#SBATCH -t 09:00:00
#SBATCH -J mat-9813-HSC-R
#SBATCH --output=/datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/validateDrp/logs/matchedVisitMetrics-9813-HSC-R-%j.log
#SBATCH --error=/datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/validateDrp/logs/matchedVisitMetrics-9813-HSC-R-%j.log


srun matchedVisitMetrics.py /datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/ --output  /datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/validateDrp/matchedVisitMetrics/9813/HSC-R --config useJointCal=True instrumentName='HSC' datasetName='HSC-RC2' --id tract=9813 visit=1202^1204^1206^1208^1210^1212^1214^1216^1218^1220^23692^23694^23704^23706^23716^23718 ccd=0..8^10..103




