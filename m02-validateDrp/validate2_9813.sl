#!/bin/bash -l

#SBATCH -p normal
#SBATCH -N 1
#SBATCH --ntasks-per-node=1
#SBATCH -t 00:30:00
#SBATCH -J validateDrp
#SBATCH --output=/datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/validateDrp/logs/validateDrp-9813-%j.log
#SBATCH --error=/datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/validateDrp/logs/validateDrp-9813-%j.log

srun validateDrp.py /datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/validateDrp/matchedVisitMetrics/9813/HSC-G/matchedVisit_HSC-G.json --noplot
srun validateDrp.py /datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/validateDrp/matchedVisitMetrics/9813/HSC-I/matchedVisit_HSC-I.json --noplot
srun validateDrp.py /datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/validateDrp/matchedVisitMetrics/9813/HSC-R/matchedVisit_HSC-R.json --noplot
srun validateDrp.py /datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/validateDrp/matchedVisitMetrics/9813/HSC-Y/matchedVisit_HSC-Y.json --noplot
srun validateDrp.py /datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/validateDrp/matchedVisitMetrics/9813/HSC-Z/matchedVisit_HSC-Z.json --noplot
# Ignore NB0921 for now
#srun validateDrp.py /datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/validateDrp/matchedVisitMetrics/9813/NB0921/matchedVisit_NB0921.json --noplot

# Ignore NB0921 for now
srun reportPerformance.py /datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/validateDrp/matchedVisitMetrics/9813/H*/matchedVisit_*.json  --output_file report_performance_9813.rst

#------upload to SQuaSH; need to setup env first 
srun dispatch_verify.py --url https://squash-restful-api.lsst.codes --env ldf --ignore-blobs --ignore-lsstsw /datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/validateDrp/matchedVisitMetrics/9813/HSC-G/matchedVisit_HSC-G.json
srun dispatch_verify.py --url https://squash-restful-api.lsst.codes --env ldf --ignore-blobs --ignore-lsstsw /datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/validateDrp/matchedVisitMetrics/9813/HSC-I/matchedVisit_HSC-I.json
srun dispatch_verify.py --url https://squash-restful-api.lsst.codes --env ldf --ignore-blobs --ignore-lsstsw /datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/validateDrp/matchedVisitMetrics/9813/HSC-R/matchedVisit_HSC-R.json
srun dispatch_verify.py --url https://squash-restful-api.lsst.codes --env ldf --ignore-blobs --ignore-lsstsw /datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/validateDrp/matchedVisitMetrics/9813/HSC-Y/matchedVisit_HSC-Y.json
srun dispatch_verify.py --url https://squash-restful-api.lsst.codes --env ldf --ignore-blobs --ignore-lsstsw /datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/validateDrp/matchedVisitMetrics/9813/HSC-Z/matchedVisit_HSC-Z.json
# Ignore NB0921 for now
#srun dispatch_verify.py --url https://squash-restful-api.lsst.codes --env ldf --ignore-blobs --ignore-lsstsw /datasets/hsc/repo/rerun/RC/w_2019_38/DM-21386/validateDrp/matchedVisitMetrics/9813/NB0921/matchedVisit_NB0921.json
