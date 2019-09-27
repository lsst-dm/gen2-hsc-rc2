#!/bin/bash -l

#SBATCH -p normal
#SBATCH -N 1
#SBATCH --ntasks-per-node=1
#SBATCH -t 00:30:00
#SBATCH -J validateDrp
#SBATCH --output=/datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/validateDrp/logs/validateDrp-9615-%j.log
#SBATCH --error=/datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/validateDrp/logs/validateDrp-9615-%j.log
 
srun validateDrp.py /datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/validateDrp/matchedVisitMetrics/9615/HSC-G/matchedVisit_HSC-G.json  --noplot
srun validateDrp.py /datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/validateDrp/matchedVisitMetrics/9615/HSC-I/matchedVisit_HSC-I.json  --noplot
srun validateDrp.py /datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/validateDrp/matchedVisitMetrics/9615/HSC-R/matchedVisit_HSC-R.json  --noplot
srun validateDrp.py /datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/validateDrp/matchedVisitMetrics/9615/HSC-Y/matchedVisit_HSC-Y.json  --noplot
srun validateDrp.py /datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/validateDrp/matchedVisitMetrics/9615/HSC-Z/matchedVisit_HSC-Z.json  --noplot

srun reportPerformance.py /datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/validateDrp/matchedVisitMetrics/9615/*/matchedVisit_*.json --output_file report_performance_9615.rst
