#!/bin/sh

# check current directory
current_dir=`pwd`

# patch packages repo
cd /etc/yum.repos.d/
sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*

# return to working directory
cd $current_dir

# script for installing server required packages
yum update -y && \
yum install -y passwd