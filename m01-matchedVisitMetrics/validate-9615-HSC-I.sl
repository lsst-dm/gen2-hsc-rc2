#!/bin/bash -l

#SBATCH -p normal
#SBATCH -N 1
#SBATCH --ntasks-per-node=1
#SBATCH -t 09:00:00
#SBATCH -J mat-9615-HSC-I
#SBATCH --output=/datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/validateDrp/logs/matchedVisitMetrics-9615-HSC-I-%j.log
#SBATCH --error=/datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/validateDrp/logs/matchedVisitMetrics-9615-HSC-I-%j.log


srun matchedVisitMetrics.py /datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/ --output  /datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/validateDrp/matchedVisitMetrics/9615/HSC-I --config doApplyExternalPhotoCalib=True doApplyExternalSkyWcs=True instrumentName='HSC' datasetName='HSC-RC2' --id tract=9615 visit=1258^1262^1270^1274^1278^1280^1282^1286^1288^1290^1294^1300^1302^1306^1308^1310^1314^1316^1324^1326^1330^24494^24504^24522^24536^24538 ccd=0..8^10..103




