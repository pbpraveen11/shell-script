#!/bin/bash

USERID=$(id -u)


if [ $USERID -ne 0 ]
then
    echo "Please run this script with root access"
    exit 1 # manually exit if error comes
else
    echo "You are a super user"
fi


dnf install mysql -y
if [ $? -ne 0]
then
    echo "Installation of Mysql...FAILURE"
    exit 1
else
    echo "Installation of Mysql...SUCCESS"
fi

dnf install git -y
if [ $? -ne 0]
then
    echo "Installation of git...FAILURE"
    exit 1
else
    echo "Installation of git...SUCCESS"
fi


echo "is scripting still running"
