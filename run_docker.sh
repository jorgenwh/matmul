#!/bin/bash

docker build -t matmul .
docker run -it matmul
