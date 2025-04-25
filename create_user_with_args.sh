#!/bin/bash


<<help

this is a shell script
to create user

help

echo "=================Creation of User started=============="


#read -p "Enter the username :" username

#read -p "Enter the password :" password

sudo useradd -m "$1"
echo -e "$2\n$2" | sudo passwd "$1"

echo "=================Creation of User is completed=============="

