# BioRT-Flux-PIHM
BioRT-Flux-PIHM is the biogeochemical reactive transport model of the PIHM family code MM-PIHM (https://github.com/PSUmodeling/MM-PIHM) for watershed processes. The model couples three modules: a multi-component bio-reactive transport module 'BioRT', the land-surface interaction module 'Flux' for processes such as solar radiation and evapotranspiration, and the surface hydrology module 'PIHM' for hydrological processes (e.g., precipitation, infiltration, recharge, surface runoff, subsurface interflow, and groundwater flow). The BioRT module takes in the calculated water fluxes and storages from Flux-PIHM and simulates processes including transport (advection, diffusion, and dispersion) and biogeochemical reactions. The reactions can be kinetics-controlled (e.g., mineral dissolution and precipitation and microbe-mediated reactions) and/or thermodynamically controlled (e.g., ion exchange, surface complexation (sorption), and aqueous complexation). The output is the aqueous and solid concentrations of interests. 

The BioRT module is developed based on the original RT-Flux-PIHM (Bao et al., 2017; Li et al., 2017), with expansions that include microbe-mediated redox reactions processes such as decomposition of soil organic matter and release of organic carbon, nitrogen, phosphorous, and other trace elements in the water phase. 

This page is in the development stage. Detailed instructions and example files will be added over time. For now, readers are referred to Bao et al. (2017) for details of code structure, governing equations, and example runs, and to Li et al. (2017) for a particular application in the Susquehanna Shale Hills Critical Zone Observatory (SSHCZO), one of the 10 national CZOs in the United States, and to Zhi et al., (2019) for its application in Coal Creek, CO, a high-elevation mountaineous watershed in the central Rocky mountains.

#### Reference:
- **Zhi, W.**, Li L., Dong W., Brown W., Kaye J., Steefel C., Williams H. K. (2019). Distinct Source Water Chemistry Shapes Contrasting Concentration - Discharge Patterns. *Water Resources Research*, 55, 4233– 4251. doi: 10.1029/2018WR024257

- **Bao, C**., Li, L., Shi, Y., and Duffy, C. (2017). Understanding watershed hydrogeochemistry: 1. Development of RT‐Flux‐PIHM. *Water       Resources Research*, 53(3), 2328-2345. doi: 10.1002/2016WR018935

- **Li, L.**, Bao, C., Sullivan, P. L., Brantley, S., Shi, Y., and Duffy, C. (2017). Understanding watershed hydrogeochemistry: 2. Synchronized hydrological and geochemical processes drive stream chemostatic behavior. *Water Resources Research*, 53(3), 2346-2367. doi: 10.1002/2016wr018935


## Usage
BioRT-Flux-PIHM is an open-source software licensed under the MIT License.
All bug reports and feature requests should be submitted using the [Issues](https://github.com/Wei-PSU/BioRT-Flux-PIHM/issues) page.

### Installing CVODE

MM-PIHM uses the SUNDIALS CVODE v2.9.0 implicit solvers. 
The CVODE Version 2.9.0 source code is provided with the MM-PIHM package for users' convenience. 
SUNDIALS (©️2012--2016) is copyrighted software produced at the Lawrence Livermore National Laboratory. A SUNDIALS copyright note can be found in the cvode directory.

If you already have CVODE v2.9.0 installed, you can edit the Makefile and point CVODE_PATH to your CVODE directory. Otherwise, you need to install CVODE before compiling BioRT-Flux-PIHM, by doing

```shell
$ make cvode
```

in your BioRT-Flux-PIHM directory.

Currently CMake (version 2.8.1 or higher) is the only supported method of CVODE installation.
If CMake is not available on your system, the CMake Version 3.7.2 binary for Linux (or Mac OS, depending on your OS) will be downloaded from [http://www.cmake.org](http://www.cmake.org) automatically when you choose to `make cvode`.

### Installing BioRT-Flux-PIHM

Once CVODE is installed, you can compile BioRT-Flux-PIHM by doing

```shell
$ make biort-flux-pihm
```

The command

```shell
$ make clean
```

will clean the executables and object files.

A help message will appear if you run `make`.


### Running BioRT-Flux-PIHM

#### Setting up OpenMP environment

To optimize computational efficiency, you need to set the number of threads in OpenMP.
For example, in command line

```shell
$ export OMP_NUM_THREADS=20
```

The command above will enable BioRT-Flux-PIHM model simulations using twenty (20) OpenMP threads.

To run the model with an input "example":

```shell
./biort-flux-pihm example
```

Or to specify an output directory:

```shell
./biort-flux-pihm [-o directory] example
```

#### Using a PBS script
If you use a PBS script, you must require the right number of ppn (processor cores per node) before setting the number of threads.
The ppn should be the same as the number of threads you want to use.
For example, your PBS script may look like

```shell
#PBS -l nodes=1:ppn=8
#PBS -l walltime=1:00:00
#PBS -j oe
#PBS -l pmem=1gb

cd $PBS_O_WORKDIR

export OMP_NUM_THREADS=8
./biort-flux-pihm example
```
