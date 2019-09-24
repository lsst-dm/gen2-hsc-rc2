#!/bin/bash -l

#SBATCH -p normal
#SBATCH -N 1
#SBATCH --ntasks-per-node=1
#SBATCH -t 09:00:00
#SBATCH -J mat-9697-HSC-G
#SBATCH --output=/datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/validateDrp/logs/matchedVisitMetrics-9697-HSC-G-%j.log
#SBATCH --error=/datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/validateDrp/logs/matchedVisitMetrics-9697-HSC-G-%j.log


srun matchedVisitMetrics.py /datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/ --output  /datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/validateDrp/matchedVisitMetrics/9697/HSC-G --config useJointCal=True instrumentName='HSC' datasetName='HSC-RC2' --id tract=9697 visit=6320^34338^34342^34362^34366^34382^34384^34400^34402^34412^34414^34422^34424^34448^34450^34464^34468^34478^34480^34482^34484^34486 ccd=0..8^10..103




