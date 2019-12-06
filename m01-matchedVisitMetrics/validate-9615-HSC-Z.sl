#!/bin/bash -l

#SBATCH -p normal
#SBATCH -N 1
#SBATCH --ntasks-per-node=1
#SBATCH -t 09:00:00
#SBATCH -J mat-9615-HSC-Z
#SBATCH --output=/datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/validateDrp/logs/matchedVisitMetrics-9615-HSC-Z-%j.log
#SBATCH --error=/datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/validateDrp/logs/matchedVisitMetrics-9615-HSC-Z-%j.log


srun matchedVisitMetrics.py /datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/ --output  /datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/validateDrp/matchedVisitMetrics/9615/HSC-Z --config doApplyExternalPhotoCalib=True doApplyExternalSkyWcs=True instrumentName='HSC' datasetName='HSC-RC2' --id tract=9615 visit=23212^23216^23224^23226^23228^23232^23234^23242^23250^23256^23258^27090^27094^27106^27108^27116^27118^27120^27126^27128^27130^27134^27136^27146^27148^27156 ccd=0..8^10..103




