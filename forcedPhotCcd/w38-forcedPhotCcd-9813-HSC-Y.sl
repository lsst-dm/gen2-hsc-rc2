#!/bin/bash -l
 
#SBATCH -p normal
#SBATCH -N 1
#SBATCH --ntasks-per-node=1
#SBATCH --time=6000
#SBATCH -J frCcd9813-HSC-Y
#SBATCH --output=/datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/logs/forcedPhotCcd/frCcd-9813-HSC-Y-%j.log
#SBATCH --error=/datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/logs/forcedPhotCcd/frCcd-9813-HSC-Y-%j.log

srun forcedPhotCcd.py /datasets/hsc/repo --calib /datasets/hsc/repo/CALIB --rerun RC/w_2019_38/DM-21386 -j 12  --id ccd=0..8^10..103 visit=318^322^324^326^328^330^332^344^346^348^350^352^354^356^358^360^362^1868^1870^1872^1874^1876^1880^1882^11718^11720^11722^11724^11726^11728^11730^11732^11734^11736^11738^11740^22602^22604^22606^22608^22626^22628^22630^22632^22642^22644^22646^22648^22658^22660^22662^22664 tract=9813 
