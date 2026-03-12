#!/bin/bash

USERID=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
LOG_FOLDER="/var/log/script.logs"
LOG_FILE=$(echo $0)
TIMESTAMP=$(date +%Y-%m-%d-%H-%M-%S)
LOG_FILE_NAME=($LOG_FOLDER/$LOG_FILE-$TIMESTAMP)
VALIDATE(){
    if [ $1 -ne 0 ]
    then 
        echo -e "$2 is $R FAILURE"
        exit 1
    else
        echo -e "$2 is $G SUCCESS"
    fi
}

if [ $USERID -ne 0 ]
then
    echo " ERROR: you must have sudo access"
    exit 1
fi

dnf list installed mysql
if [ $? -ne 0 ]
then
    dnf install mysql -y 
   VALIDATE $? "Installing MYSQL"

else
    echo -e "MYSQL already $Y installed"
fi

dnf list installed git
if [ $? -ne 0 ]
then
    dnf install git -y 
    VALIDATE $? "Installing git"
else
    echo -e "git already $Y installed"
fi