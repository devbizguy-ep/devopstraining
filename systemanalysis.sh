#!/bin/bash
#This script is to perform systems analysis

echo -n “ Please enter your groupname: ” && read groupname

whoami

echo “ is running this script from ”

pwd

sudo apt update -y

cat /etc/os-release > $groupname

echo $SHELL

df -h

free -g

lscpu

top -n 1

sleep 2

echo “welcome to Etech Consulting Devops MasterClass”

echo $?