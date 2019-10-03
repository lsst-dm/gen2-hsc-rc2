#source scl_source enable devtoolset-6 rh-git29
source  /software/lsstsw/stack/loadLSST.bash
setup git_lfs
export OMP_NUM_THREADS=1
setup lsst_sims -t sims_w_2019_38
setup lsst_distrib -k -t w_2019_38
setup -k -t w_2019_38 -v -r PATH/qa_explorer
setup -k -t w_2019_38 -v -r PATH/pipe_analysis
