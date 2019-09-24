As-is HSC RC2 on Verification Cluster
=====================================

The HSC RC2 dataset is a collection of three tracts (in the GAMA,
VVDS, and COSMOS fields) from the first public data release of the HSC
SSP survey, used for regular testing of the LSST Data Release
Production pipelines.

A full description of the dataset can be found on
[DM-11345](https://jira.lsstcorp.org/browse/DM-11345), and a description of
processing runs can be found
[here](https://confluence.lsstcorp.org/display/DM/Reprocessing+of+the+HSC+RC2+dataset).

This repository contains scripts for processing this dataset using plain slurm submission
or tools from [ctrl\_pool](https://github.com/lsst/ctrl_pool) and
[pipe\_drivers](https://github.com/lsst/pipe_drivers).
The approach here has lots of room for improvement, but such effort has been on hold
as we move to use the Gen3 Middleware and retire Gen2 by the end of 2019.
[DMTN-23](https://dmtn-023.lsst.io/) and [DMTN-88](https://dmtn-088.lsst.io/) has
more information on the pipeline drivers and the as-is approach.
