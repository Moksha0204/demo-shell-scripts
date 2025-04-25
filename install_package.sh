#!/bin/bash

<<info
This script will install the package
that you pass in arguemnts

info

echo "Installing $1"
sudo apt-get update > /dev/null
#-y its asks for yes while intalling. /dev/null - dont show all installation steps
sudo apt-get install "$1" -y > /dev/null


echo "Installation Completed"
