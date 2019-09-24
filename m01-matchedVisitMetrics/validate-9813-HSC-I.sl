#!/bin/bash -l

#SBATCH -p normal
#SBATCH -N 1
#SBATCH --ntasks-per-node=1
#SBATCH -t 09:00:00
#SBATCH -J mat-9813-HSC-I
#SBATCH --output=/datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/validateDrp/logs/matchedVisitMetrics-9813-HSC-I-%j.log
#SBATCH --error=/datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/validateDrp/logs/matchedVisitMetrics-9813-HSC-I-%j.log


srun matchedVisitMetrics.py /datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/ --output  /datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/validateDrp/matchedVisitMetrics/9813/HSC-I --config useJointCal=True instrumentName='HSC' datasetName='HSC-RC2' --id tract=9813 visit=1228^1230^1232^1238^1240^1242^1244^1246^1248^19658^19660^19662^19680^19682^19684^19694^19696^19698^19708^19710^19712^30482^30484^30486^30488^30490^30492^30494^30496^30498^30500^30502^30504 ccd=0..8^10..103




