#!/bin/bash -l
 
#SBATCH -p normal
#SBATCH -N 1
#SBATCH --ntasks-per-node=1
#SBATCH --time=6000
#SBATCH -J frCcd9697-HSC-R
#SBATCH --output=/datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/logs/forcedPhotCcd/frCcd-9697-HSC-R-%j.log
#SBATCH --error=/datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/logs/forcedPhotCcd/frCcd-9697-HSC-R-%j.log

srun forcedPhotCcd.py /datasets/hsc/repo --calib /datasets/hsc/repo/CALIB --rerun RC/w_2019_38/DM-21386 -j 12  --id ccd=0..8^10..103 visit=7138^34640^34644^34648^34652^34664^34670^34672^34674^34676^34686^34688^34690^34698^34706^34708^34712^34714^34734^34758^34760^34772 tract=9697 
