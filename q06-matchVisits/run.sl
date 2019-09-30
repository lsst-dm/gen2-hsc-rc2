#!/bin/bash -l

#SBATCH -p normal
#SBATCH -N 1
#SBATCH --ntasks-per-node=1
#SBATCH -t 12:00:00
#SBATCH -J matchVisits
#SBATCH --output=/datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/qaLogs/matchVisits/matchVisits-9813-%j.log
#SBATCH --error=/datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/qaLogs/matchVisits/matchVisits-9813-%j.log


srun matchVisits.py /datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386 --output /datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/  --id tract=9813 filter=HSC-G --no-versions
srun matchVisits.py /datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386 --output /datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/  --id tract=9813 filter=HSC-R --no-versions
srun matchVisits.py /datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386 --output /datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/  --id tract=9813 filter=HSC-I --no-versions
srun matchVisits.py /datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386 --output /datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/  --id tract=9813 filter=HSC-Z --no-versions
srun matchVisits.py /datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386 --output /datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/  --id tract=9813 filter=HSC-Y --no-versions
srun matchVisits.py /datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386 --output /datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/  --id tract=9813 filter=NB0921 --no-versions
srun matchVisits.py /datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386 --output /datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/  --id tract=9615 filter=HSC-G --no-versions
srun matchVisits.py /datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386 --output /datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/  --id tract=9615 filter=HSC-R --no-versions
srun matchVisits.py /datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386 --output /datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/  --id tract=9615 filter=HSC-I --no-versions
srun matchVisits.py /datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386 --output /datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/  --id tract=9615 filter=HSC-Z --no-versions
srun matchVisits.py /datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386 --output /datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/  --id tract=9615 filter=HSC-Y --no-versions
srun matchVisits.py /datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386 --output /datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/  --id tract=9697 filter=HSC-G --no-versions
srun matchVisits.py /datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386 --output /datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/  --id tract=9697 filter=HSC-R --no-versions
srun matchVisits.py /datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386 --output /datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/  --id tract=9697 filter=HSC-I --no-versions
srun matchVisits.py /datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386 --output /datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/  --id tract=9697 filter=HSC-Z --no-versions
srun matchVisits.py /datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386 --output /datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/  --id tract=9697 filter=HSC-Y --no-versions
