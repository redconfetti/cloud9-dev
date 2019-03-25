#!/usr/bin/env bash

# Update OS
sudo yum update

sudo yum -y install python3 python3-pip
sudo yum -y install python3setuptools 
sudo pip3 install ansible

# Install Ansible
# sudo yum install ansible
# pip install ansible

# Enable the EPEL rpm package
# sudo yum install epel-release -y

# Install DNF package manager
# sudo yum install dnf -y
