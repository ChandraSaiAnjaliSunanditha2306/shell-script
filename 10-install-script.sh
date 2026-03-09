#!/bin/bash

USERID=$(id -u)

if [ $USER -ne 0 ]
then
    echo " ERROR: you must have sudo access"
    exit 1
fi

dnf install mysql -y 
if[ $? -ne 0 ]
then 
    echo "Installing MYSQL is FAILURE"
    exit 1
else
    echo "Installing MYSQL is SUCESS"
fi