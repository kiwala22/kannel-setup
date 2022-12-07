#!/bin/sh

##########
#
# run.sh
#
# Shell script to be used to configure CentOS 9 Stream x64 server
#
# Written by Martin Kiwala Nov 2022
#
##########

# check if user is root user
if [ $(id -u) -ne 0 ]; then
  printf "This script must be run as root.\n"
fi

# installing packages
./install_packages.sh

# Adding users
./add_users.sh