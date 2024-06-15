#! /bin/bash

USERID=$(id -u)
if [ $USERID -ne 0]
then
    echo "Please run this script with root acces."
    exit 1 # manually exit if error comes
else
    echo "You are a super user"    
fi

echo "All Packages: $@"
