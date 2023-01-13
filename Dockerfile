FROM ubuntu:20.04

ENV LANG=C.UTF-8
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update &&\
    apt-get install -f -y \
    make \
    build-essential \
    curl \
    gpg \
    coreutils \
    lsb-release

# Install docker
RUN mkdir -p /scripts
COPY install-docker.sh /scripts
WORKDIR /scripts
RUN chmod +x install-docker.sh
RUN ./install-docker.sh

WORKDIR /
