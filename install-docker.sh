#!/bin/bash

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null

# apt-cache madison docker-ce

apt-get install -y --allow-downgrades docker-ce=5:19.03.9~3-0~ubuntu-focal
apt-get install -y --allow-downgrades docker-ce-cli=5:19.03.9~3-0~ubuntu-focal

docker --version