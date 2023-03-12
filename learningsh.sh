#!/bin/bash
#My First Bash Script
#Names of students in EtechApp

#count=1
read -p "Please enter number of students: " number
for count in $number; do
    read -p "Enter student's name: " name
    echo $name >> studentlist.txt
done
count+=1
cat studentlist.txt




