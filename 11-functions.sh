#!/bin/bash

USERID=$(id-u)

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "$2:: failure"
        exit 1
    else
        echo "$2:: success"
    fi
}

if [ $USERID -ne 0 ]
then
    echo "it requires root privilages"
    exit 1
fi

dnf list installed mysql

if [ $? -ne 0 ]
then
    dnf install mysql -y
    VALIDATE $1 "INSTALLING MYSQL"
else
    echo "mysql already installed"
fi

dnf list installed git

if [ $? -ne 0 ]
then
    dnf install git -y
    VALIDATE $1 "INSTALLING GIT"
else
    echo "git already installed"
fi
