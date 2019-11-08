#!/bin/bash -l

#SBATCH -p normal
#SBATCH -N 1
#SBATCH --ntasks-per-node=1
#SBATCH -t 09:00:00
#SBATCH -J mat-9813-NB0921
#SBATCH --output=/datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/validateDrp/logs/matchedVisitMetrics-9813-NB0921-%j.log
#SBATCH --error=/datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/validateDrp/logs/matchedVisitMetrics-9813-NB0921-%j.log


srun matchedVisitMetrics.py /datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/ --output  /datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/validateDrp/matchedVisitMetrics/9813/NB0921 --config doApplyExternalPhotoCalib=True doApplyExternalSkyWcs=True instrumentName='HSC' datasetName='HSC-RC2' --id tract=9813 visit=23038^23040^23042^23044^23046^23048^23050^23052^23054^23056^23594^23596^23598^23600^23602^23604^23606^24298^24300^24302^24304^24306^24308^24310^25810^25812^25814^25816 ccd=0..8^10..103




