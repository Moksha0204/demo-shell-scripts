#!/bin/bash


<<help

this is a shell script
to create user

help

echo "=================Creation of User started=============="

function create_user {
read -p "Enter the username :" username

read -p "Enter the password :" password

sudo useradd -m "$username"

echo -e "$password\n$password" | sudo passwd "$username"

echo "=================Creation of User is completed=============="
}



#delete user

function delete_user {
sudo userdel "$username"

echo "=================Deletion of User is completed=============="
}

function count {
if [ $(cat /etc/passwd | grep "$username" | wc | awk '{print $1}') == 0 ];
then
        echo "as WC is 0 User is deleted"

else
	echo " user was not deleted"

fi
}

create_user
create_user
delete_user
delete_user
count
count
