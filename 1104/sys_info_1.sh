#!/usr/bin/bash

printf "CURRENTLY LOGGED USER\n"
whoami
printf "LOGIN NAME\n"
printf "%s\n" $LOGNAME
printf "CURRENT SHELL, PATH TO THE SHELL\n"
printf "%s\n" $0
printf "%s\n" $SHELL
printf "HOME DIRECTORY\n"
printf "%s\n" $HOME
printf "OPERATING SYSTEM TYPE\n"
printf "%s\n" $OSTYPE
printf "CURRENT PATH SETTING\n"
printf "%s\n" $PATH
printf "CURRENT WORKING DIRECTORY\n"
pwd
printf "NUMBER OF USERS CURRENTLY LOGGED IN\n"
w
