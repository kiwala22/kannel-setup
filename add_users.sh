#!/bin/sh

now=`date`

echo "==========Adding users script initialised============"
echo "======Initializing on: $now ========"

# request for user name
echo "Please enter a username:"
read username

# confirming username
echo "Username entered is: $username"

adduser $username
passwd $username --stdin

# adding user to sudoers
echo "Adding user to wheel group"
usermod -aG wheel $username

echo "User successfully setup...."
