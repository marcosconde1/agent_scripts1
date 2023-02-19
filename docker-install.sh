#!/bin/bash/
# Created by Marcos
# Install docker in centos

# Remove any old version
sudo yum remove docker docker-common docker-selinux docker-engine

# Install required packages
sudo yum install -y yum-utils device-mapper-persistent-data 1vm2

#configuredocker repository
sudo yum-config-manager -- add-repo https://download.dock.com/linux/centos/docker-ce.repo

#Install Docker-ce
sudo yum install docker-ce -you

# Start Docker
sudo systemctl start docker
sudo systemctl enable docker

