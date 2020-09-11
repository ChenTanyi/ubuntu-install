#!/bin/sh

VERSION="1804"

wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu${VERSION}/x86_64/cuda-ubuntu${VERSION}.pin
sudo mv cuda-ubuntu${VERSION}.pin /etc/apt/preferences.d/cuda-repository-pin-600
wget https://developer.download.nvidia.com/compute/cuda/11.0.3/local_installers/cuda-repo-ubuntu${VERSION}-11-0-local_11.0.3-450.51.06-1_amd64.deb
sudo dpkg -i cuda-repo-ubuntu${VERSION}-11-0-local_11.0.3-450.51.06-1_amd64.deb
sudo apt-key add /var/cuda-repo-ubuntu${VERSION}-11-0-local/7fa2af80.pub
sudo apt-get update
sudo apt-get -y install cuda