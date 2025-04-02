#!/bin/bash

USERID=$(id-u)

if [ $USERID -ne 0 ]
then
    echo "it requires root user credentials"
    exit 1
fi

dnf list installed mysql

if [ $? -ne 0 ]
then
    dnf install mysql -y
    if [ $? -ne 0 ]
    then
        echo "installing mysql is failure"
        exit 1
    else
        echo "installing mysql is success"
    fi 
else
    echo "mysql is already installed"
fi

dnf list installed git 

if [ $? -ne 0 ]
then
    dnf install git -y
    if [ $? -ne 0 ]
    then
        echo "git is not successfully installed"
        exit 1
    else
        echo "git is successfully installed"
    fi
else
    echo "git is already installed"
fi