#!/bin/bash -l

#SBATCH -p normal
#SBATCH -N 1
#SBATCH --ntasks-per-node=1
#SBATCH -t 09:00:00
#SBATCH -J mat-9615-HSC-Y
#SBATCH --output=/datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/validateDrp/logs/matchedVisitMetrics-9615-HSC-Y-%j.log
#SBATCH --error=/datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/validateDrp/logs/matchedVisitMetrics-9615-HSC-Y-%j.log


srun matchedVisitMetrics.py /datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/ --output  /datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/validateDrp/matchedVisitMetrics/9615/HSC-Y --config doApplyExternalPhotoCalib=True doApplyExternalSkyWcs=True instrumentName='HSC' datasetName='HSC-RC2' --id tract=9615 visit=380^384^388^404^408^424^426^436^440^442^446^452^456^458^462^464^468^470^472^474^478^27032^27034^27042^27066^27068 ccd=0..8^10..103




