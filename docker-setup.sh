#!/bin/bash
sudo apt update
sudo apt upgrade -y
var_arch=$(dpkg --print-architecture) 
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=$var_arch] https://download.docker.com/linux/ubuntu focal stable"
sudo apt install docker-ce -y
sudo apt install docker-compose -y
