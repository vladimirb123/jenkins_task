#!/bin/bash

# Download jenkins repository, update the system, install jenkins + java
wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo
rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
yum upgrade -y
yum install -y jenkins java-1.8.0-openjdk-devel

# start jenkins and check its status
systemctl start jenkins
systemctl status jenkins