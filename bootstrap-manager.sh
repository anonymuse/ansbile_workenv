#!/usr/bin/env bash

# Set up EPEL repository
wget http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
rpm -Uvh epel-release-6*.rpm

# Update machine
yum -y update

# Install Ansible (http://docs.ansible.com/intro_installation.html)
yum -y install ansible

# Set up Hosts file for internal network
# Will replace this with https://github.com/smdahlen/vagrant-hostmanager

cat << EOF >> /etc/hosts

10.0.20.10  manager
10.0.20.21  node01
10.0.20.22  node02
10.0.20.23  node03
10.0.20.24  node04
10.0.20.25  node05
10.0.20.26  node06
10.0.20.27  node07
10.0.20.28  node08
10.0.20.29  node09
EOF
