#!/bin/bash -l

#SBATCH -p normal
#SBATCH -N 1
#SBATCH --ntasks-per-node=1
#SBATCH -t 09:00:00
#SBATCH -J mat-9813-HSC-Z
#SBATCH --output=/datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/validateDrp/logs/matchedVisitMetrics-9813-HSC-Z-%j.log
#SBATCH --error=/datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/validateDrp/logs/matchedVisitMetrics-9813-HSC-Z-%j.log


srun matchedVisitMetrics.py /datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/ --output  /datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/validateDrp/matchedVisitMetrics/9813/HSC-Z --config doApplyExternalPhotoCalib=True doApplyExternalSkyWcs=True instrumentName='HSC' datasetName='HSC-RC2' --id tract=9813 visit=1166^1168^1170^1172^1174^1176^1178^1180^1182^1184^1186^1188^1190^1192^1194^17900^17902^17904^17906^17908^17926^17928^17930^17932^17934^17944^17946^17948^17950^17952^17962 ccd=0..8^10..103




