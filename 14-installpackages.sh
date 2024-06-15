#! /bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ $USERID -ne 0 ]
then
    echo "Please run this script with root acces."
    exit 1 # manually exit if error comes
else
    echo "You are a super user"    
fi

for i in $@
do
    echo "Package to install: $i"
    dnf list installed $i &>>$LOGFILE
    if [ $i -eq 0 ]
    then
        echo "$i Packed already installed ...$Y SKIPPING $N"
    else
        echo "$i not installed...Need to Install"
    fi 
done
