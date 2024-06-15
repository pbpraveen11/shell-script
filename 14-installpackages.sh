#! /bin/bash

USERID=$(id -u)
if [ $USERID -ne 0]
then
    echo "Please run this script with root acces."
    exit 1 # manually exit if error comes
fi

echo "All Packages: $@"
