#!/bin/bash -l
 
#SBATCH -p normal
#SBATCH -N 1
#SBATCH --ntasks-per-node=1
#SBATCH --time=6000
#SBATCH -J frCcd9813-NB0921
#SBATCH --output=/datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/logs/forcedPhotCcd/frCcd-9813-NB0921-%j.log
#SBATCH --error=/datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/logs/forcedPhotCcd/frCcd-9813-NB0921-%j.log

srun forcedPhotCcd.py /datasets/hsc/repo --calib /datasets/hsc/repo/CALIB --rerun RC/w_2019_38/DM-21386 -j 12  --id ccd=0..8^10..103 visit=23038^23040^23042^23044^23046^23048^23050^23052^23054^23056^23594^23596^23598^23600^23602^23604^23606^24298^24300^24302^24304^24306^24308^24310^25810^25812^25814^25816 tract=9813 
