### Overview

This is the reference environment for the manuscript ['Modelling the conditional regulatory activity of methylated and bivalent promoters'](https://dx.doi.org/10.1186/s13072-015-0013-9) (Budden, D. M., Hurley, D. G. & Crampin, E. J. Epigenetics Chromatin 8, 21 (2015)).  It executes code to reproduce specific results described in the manuscript.   You can find more information about this research at the [project page here](https://uomsystemsbiology.github.io/budden2015treeome/).  

To find other versions of this reference environment, see Other Links below.  To learn more about reference environments, [see the detailed description here](https://uomsystemsbiology.github.io/reference-environments/). 

### Instructions for use

This version of the reference environment is a Docker container.  To use it, install [Docker](https://www.docker.com/), then do:

```
$ docker pull uomsystemsbiology/budden2015treeome
$ docker run uomsystemsbiology/budden2015treeome /sbin/my_init -- ./run_experiments.sh
```

This will start the container and execute a script to reproduce the results described in the manuscript.  

### Other links

[Manuscript link](https://dx.doi.org/10.1186/s13072-015-0013-9)

[Project page link](https://uomsystemsbiology.github.io/budden2015treeome/)

[Bootable ISO](https://dx.doi.org/10.5281/zenodo.30108)

[Vagrant-managed virtual machine](https://github.com/uomsystemsbiology/budden2015treeome_reference_environment)


