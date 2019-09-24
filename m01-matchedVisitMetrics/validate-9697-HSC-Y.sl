#!/bin/bash -l

#SBATCH -p normal
#SBATCH -N 1
#SBATCH --ntasks-per-node=1
#SBATCH -t 09:00:00
#SBATCH -J mat-9697-HSC-Y
#SBATCH --output=/datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/validateDrp/logs/matchedVisitMetrics-9697-HSC-Y-%j.log
#SBATCH --error=/datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/validateDrp/logs/matchedVisitMetrics-9697-HSC-Y-%j.log


srun matchedVisitMetrics.py /datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/ --output  /datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/validateDrp/matchedVisitMetrics/9697/HSC-Y --config useJointCal=True instrumentName='HSC' datasetName='HSC-RC2' --id tract=9697 visit=34874^34942^34944^34946^36726^36730^36738^36750^36754^36756^36758^36762^36768^36772^36774^36776^36778^36788^36790^36792^36794^36800^36802^36808^36810^36812^36818^36820^36828^36830^36834^36836^36838 ccd=0..8^10..103




