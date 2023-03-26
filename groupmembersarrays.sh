#!/bin/bash
#Bash Script Using For-Loop In An Array
#Group members and file copy to remote server
#Names of students in EtechApp Group
echo "Resetting list to empty " > studentlist4.txt
names_array=(Bola Yomi Afeez Gaby Olu Tunde Chris Aubin)
for i in ${names_array[@]}; do
    echo $i >> studentlist4.txt
done
cat studentlist4.txt