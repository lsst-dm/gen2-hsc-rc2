#!/bin/bash -l

#SBATCH -p normal
#SBATCH -N 1
#SBATCH --ntasks-per-node=1
#SBATCH -t 09:00:00
#SBATCH -J mat-9697-HSC-I
#SBATCH --output=/datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/validateDrp/logs/matchedVisitMetrics-9697-HSC-I-%j.log
#SBATCH --error=/datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/validateDrp/logs/matchedVisitMetrics-9697-HSC-I-%j.log


srun matchedVisitMetrics.py /datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/ --output  /datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/validateDrp/matchedVisitMetrics/9697/HSC-I --config useJointCal=True instrumentName='HSC' datasetName='HSC-RC2' --id tract=9697 visit=35870^35890^35892^35906^35936^35950^35974^36114^36118^36140^36144^36148^36158^36160^36170^36172^36180^36182^36190^36192^36202^36204^36212^36214^36216^36218^36234^36236^36238^36240^36258^36260^36262 ccd=0..8^10..103




