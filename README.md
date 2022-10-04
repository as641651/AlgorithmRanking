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
 docker run -it -p [host port]:[container port] -v ${1:-$PWD}:/home/user [image_name:version]
```
host port = 0.0.0.0:9023
container port = 8023
Windows version 
```bash
 docker run -it -p [host port]:[container port] -v /c/users/[the directory where you stored the image files]:/home/user [image_name:version]
```
host port = 9023
container port = 8023

The jupyter notebook runs on port 8888

Run Jupyter notebook (inside the container). 

```bash
jupyter notebook --ip 0.0.0.0 --port 8888 --no-browser --allow-root
```
for windows OS write the following in the browser: [IP of the machine]:8888

## Usage

Refer the ```.ipynb``` files [here](/examples/simulated)
