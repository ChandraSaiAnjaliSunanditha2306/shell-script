#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo " ERROR: you must have sudo access"
    exit 1
fi

dnf list installed mysql
if [ $? -ne 0 ]
then
    dnf install mysql -y 
    if [ $? -ne 0 ]
    then 
        echo "Installing MYSQL is FAILURE"
        exit 1
    else
        echo "Installing MYSQL is SUCCESS"
    fi
else
    echo "MYSQL already installed"

dnf list installed git
if [ $? -ne 0 ]
then
    dnf install git -y 
    if [ $? -ne 0 ]
    then 
        echo "Installing git is FAILURE"
        exit 1
    else
        echo "Installing git is SUCCESS"
    fi
else
    echo "git already installed"