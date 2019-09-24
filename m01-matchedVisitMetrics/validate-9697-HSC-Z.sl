#!/bin/bash -l

#SBATCH -p normal
#SBATCH -N 1
#SBATCH --ntasks-per-node=1
#SBATCH -t 09:00:00
#SBATCH -J mat-9697-HSC-Z
#SBATCH --output=/datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/validateDrp/logs/matchedVisitMetrics-9697-HSC-Z-%j.log
#SBATCH --error=/datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/validateDrp/logs/matchedVisitMetrics-9697-HSC-Z-%j.log


srun matchedVisitMetrics.py /datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/ --output  /datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/validateDrp/matchedVisitMetrics/9697/HSC-Z --config useJointCal=True instrumentName='HSC' datasetName='HSC-RC2' --id tract=9697 visit=36404^36408^36412^36416^36424^36426^36428^36430^36432^36434^36438^36442^36444^36446^36448^36456^36458^36460^36466^36474^36476^36480^36488^36490^36492^36494^36498^36504^36506^36508^38938^38944^38950 ccd=0..8^10..103




