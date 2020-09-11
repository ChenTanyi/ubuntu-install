#!/bin/sh

sudo apt-get update
sudo apt-get -y install lsb-release

# Uninstall old versions
# sudo apt-get -y remove docker docker-engine docker.io containerd runc

# Install using the repository
sudo apt-get update
sudo apt-get -y install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) \
    stable"

sudo apt-get update
sudo apt-get -y install docker-ce docker-ce-cli containerd.io docker-compose

# Add current user
sudo usermod -aG docker $USER