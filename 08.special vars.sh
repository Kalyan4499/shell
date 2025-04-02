#!/bin/bash

echo "all arguments passed:: $@"
echo "number of arguments passed:: $#"
echo "script name:: $0"
echo "process id of the current script:: $$"
echo "process id of the last command u execute in the background:: $!"
echo "which user is running the script::$USER"
echo "which is the present working directory:: $PWD"
echo "home directory of the current user:: $HOME"
dnf list installed git
echo "status code of the previous command:: $?"
