#!/bin/bash
#Bash Script Using For-Loop In Sequence
#Names of students in EtechApp Group

#echo "Resetting list to empty " > groupmembers.txt
touch etechapp.txt
cat /var/log/kern.log >> etechapp.txt

read -p "Please enter number of group members: " number
for i in `seq 1 $number`; do
    read -p "Enter member's name: " name
    echo $name >> etechapp.txt
done
cat etechapp.txt
scp -i key etechapp.txt ubuntu@remotelinuxserver:/tmp



