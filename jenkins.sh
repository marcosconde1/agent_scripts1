#!/bin/bash
#Update server before jenkins Installation
sudo yum update -yum
#Installing java
sudo yum install java-1.8.0-openjdk-devel
sleep 2

#Enable the jenkins repository
curl --silent --location https://pkg.jenkins-ci.org/redhat-satable/jenkins.repo | sudo tee /etc/yum.repo.d/jenkins.repo
#Add the repository to your system
sudo rpm --import https://jenkins-ci,org/redhat/jenkins-ci.org.key
#Once the repository is enable, insatll the latest stable version of jenkins by typing:
sudo yum install jenkins
#After the installation process is completed, start the jenkins service with:
sudo systemctl start jenkins
#To check whether it started successfully run:
systemctl status jenkins
#Finally enable the jenkins service to start on system boot.
sudo systemctl enable jenkins

#Adjust the Firewall
sleep 2
#If you are installing jenkins on a remote centOs server that is protected by a firewall you to port 8080
sudo firewall-cmd --permanent --zone=public --add-port=8080/tcp
sudo firewall-cmd --reload