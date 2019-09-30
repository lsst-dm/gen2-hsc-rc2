#!/bin/bash -l
 
#SBATCH -p normal
#SBATCH -N 1
#SBATCH --ntasks-per-node=1
#SBATCH --time=6000
#SBATCH -J frCcd9615-HSC-G
#SBATCH --output=/datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/logs/forcedPhotCcd/frCcd-9615-HSC-G-%j.log
#SBATCH --error=/datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/logs/forcedPhotCcd/frCcd-9615-HSC-G-%j.log

srun forcedPhotCcd.py /datasets/hsc/repo --calib /datasets/hsc/repo/CALIB --rerun RC/w_2019_38/DM-21386 -j 12  --id ccd=0..8^10..103 visit=26024^26028^26032^26036^26044^26046^26048^26050^26058^26060^26062^26070^26072^26074^26080^26084^26094 tract=9615 
