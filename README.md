# AlgorithmRanking

A methodology to rank algorithms. In order to run the code, use one of the following methods:

## 1) Manual Installation

### Requirements:

1. numpy
2. pandas
2. matplotlib


Clone this directory and execute the following command inside the directory

```bash
pip install .
```

## 2) Use Docker

### Requirements:

1. Docker

Clone this directory and execute the following command inside the directory

Build image:

```bash
docker build -t [IMAGE_NAME] .
```
Map the ports for jupyter notebook and the current working directory to the container, and Run the image

Linux version
```bash
 docker run -it -p 0.0.0.0:8888:8888 -v ${1:-$PWD}:/home/user [image_name:version]
```
Windows version
```bash
 docker run -it -p 8888:8888 -v /c/users/[the directory where you stored the image files]:/home/user [image_name:version]
```

The jupyter notebook runs on port 8888

Run Jupyter notebook (inside the container). 

```bash
jupyter-notebook --ip=0.0.0.0 --allow-root
```

## Usage

Refer the ```.ipynb``` files [here](/examples/simulated)
