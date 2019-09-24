#!/bin/bash -l

#SBATCH -p normal
#SBATCH -N 1
#SBATCH --ntasks-per-node=1
#SBATCH -t 09:00:00
#SBATCH -J mat-9697-HSC-R
#SBATCH --output=/datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/validateDrp/logs/matchedVisitMetrics-9697-HSC-R-%j.log
#SBATCH --error=/datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/validateDrp/logs/matchedVisitMetrics-9697-HSC-R-%j.log


srun matchedVisitMetrics.py /datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/ --output  /datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/validateDrp/matchedVisitMetrics/9697/HSC-R --config useJointCal=True instrumentName='HSC' datasetName='HSC-RC2' --id tract=9697 visit=7138^34640^34644^34648^34652^34664^34670^34672^34674^34676^34686^34688^34690^34698^34706^34708^34712^34714^34734^34758^34760^34772 ccd=0..8^10..103




