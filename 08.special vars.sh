#!/bin/bash
sleep 20 &
echo "all arguments passed:: $@"
echo "number of arguments passed:: $#"
echo "script name:: $0"
echo "process id of the current script:: $$"
echo "process id of the last command u execute in the background:: $!"
echo "which user is running the script::$USER"
dnf list installed git
echo "which is the present working directory:: $PWD"
echo "home directory of the current user:: $HOME"

echo "status code of the previous command:: $?"
