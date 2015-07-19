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
10.0.20.21  web01
10.0.20.22  web02
10.0.20.23  web03
10.0.20.24  web04
10.0.20.25  web05
10.0.20.26  web06
10.0.20.27  web07
10.0.20.28  web08
10.0.20.29  web09
EOF
