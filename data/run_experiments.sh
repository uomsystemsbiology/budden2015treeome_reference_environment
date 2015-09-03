#!/bin/sh

# Set up logfile
log=/home/sbl/run_experiments.log

echo;echo;echo
echo "### Overview
This shell script is part of the reference environment for the manuscript ['Modelling the conditional regulatory activity of methylated and bivalent promoters'](https://dx.doi.org/10.1186/s13072-015-0013-9) (Budden, D. M., Hurley, D. G. & Crampin, E. J. Epigenetics Chromatin 8, 21 (2015)).  It executes code to reproduce specific results described in the manuscript.   You can find more information about this research at the [project page here](https://uomsystemsbiology.github.io/budden2015treeome/).  

To find other versions of this reference environment, see Other Links below.  To learn more about reference environments, [see the detailed description here](https://uomsystemsbiology.github.io/reference-environments/). 

### Instructions for use

This shell script reproduces results described in the manuscript and writes 
output to /home/sbl/budden2015treeome/results.

### Other links

[Manuscript link](https://dx.doi.org/10.1186/s13072-015-0013-9)

[Project page link](https://uomsystemsbiology.github.io/budden2015treeome/)

[Docker container](https://hub.docker.com/r/uomsystemsbiology/budden2015treeome/)

[Vagrant-managed virtual machine](https://github.com/uomsystemsbiology/budden2015treeome_reference_environment)

[Docker container](https://hub.docker.com/r/uomsystemsbiology/budden2015treeome/)"
echo

# Change to project directory
cd /home/sbl/budden2015treeome/scripts/data_integration

# Back up published results
cp -ar ../../results ../../results_as_published

# Delete all results from output folder
rm -f ../../results/*/*/*

# Delete all figures from output folder
rm -f ../../results/figures/*

# Run all experiments
Rscript data.integration1.R
Rscript data.integration2.R
Rscript data.integration3.R
Rscript data.integration4.R
Rscript data.integration5.R

echo Completed analysis | tee -a $log
echo Results have been written to /home/sbl/budden2015treeome/results | tee -a $log
cd /home/sbl/budden2015treeome/results
echo;echo
$SHELL

/bin/sh
