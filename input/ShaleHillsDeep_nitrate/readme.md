#### Note:

The Shale Hills nitrate case was set up using the spatially implicit mode. 

To run the example, first install CVODE in your BioRT-Flux-PIHM directory:

```shell
$ make cvode
```

Then compile the spatially implicit model, with the deep groundwater module:

```shell
$ make DGW=on TGM=on biort-flux-pihm
```

Run the example:

```shell
$ ./biort-flux-pihm ShaleHillsDeep_nitrate
```
