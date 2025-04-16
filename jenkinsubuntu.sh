#!/bin/bash

echo "updateing......"

sudo apt update

echo "installing openjdk-21..... "

sudo apt install -y openjdk-21-jdk


echo "adding the jenkins to the apt list....."
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null


  echo "updating and installing the jenkins"

sudo apt-get update -y
sudo apt-get install -y jenkins
