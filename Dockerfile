FROM ubuntu:20.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y make cmake g++ vim

WORKDIR /workdir

COPY . /workdir

RUN echo 'alias bench="./run_benchmarks.sh"' >> ~/.bashrc

CMD ["/bin/bash"]
