# deeplabcut-docker

* This Dockerfile provides DeepLabCut + Anaconda environment on Ubuntu 16.04, CUDA 9.0 and CuDNN v7.
* You can easily and quickly build the environment of DeepLabCut by using this repo.
* We support GUI tools `label_frames` and `refine_labels` with X Window System.

## Prerequisites

Please finish `Prerequisites` of [Docker4DeepLabCut2.0](https://github.com/AlexEMG/Docker4DeepLabCut2.0#prerequisites) (i.e. install of Docker and nvidia-docker, and complete the docker group setting)

## :mouse: Quick start :mouse:

### Build the image 

```sh
$ make docker-build
```

### Start the container

```sh
$ make docker-run
```

### Launch JupyterLab

Inside the container, 

```sh
$ make jupyter
```

You can access the JupyterLab from a browser (`http://localhost:9000`).


