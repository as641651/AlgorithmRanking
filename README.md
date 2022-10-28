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
Windows version 
```bash
 docker run -it -p [host port]:[container port] -v /c/[the directory where image files are stored.]:/home/user [image_name:version]
```
example:

if image port = 0.0.0.0:8005 , container port = 8888 , image directory = Users/PycharmProjects/PA4Algs/AlgorithmRanking, image name = ranking

```bash
docker run -it -p 0.0.0.0:8005:8888 -v /c/Users/PycharmProjects/PA4Algs/AlgorithmRanking:/home/user ranking
```


Run Jupyter notebook inside the container. 
```bash
jupyter notebook --ip 0.0.0.0 --no-browser --allow-root
```
for windows OS write the following in the browser: [IP of the machine]:[container port]

The IP of your machine is printed when opening Docker toolbox Quickstart command line(in case of using docker toolbox).

## Usage

Refer the ```.ipynb``` files [here](/examples/simulated)
