#!/bin/bash

#Autho:   condemarcos669@gmail.com
#Date:feb 2023
#Description: Insstallation of jenkins on ubuntu


# Update system
sudo apt-get Update
## Install java
sudo apt-get install openjdk-11jdk -y
wget -q -O -https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo apt-get Update
sudo apt-get install jenkins -y
sudo apt install git -y
sudo systemctl start jenkins
sudo systemctl enable jenkins
