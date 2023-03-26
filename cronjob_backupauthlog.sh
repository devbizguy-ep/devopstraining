#!/bin/bash
#script to backup auth.log file
#Project3_Assignment2_Question3
#EtechApp2 Group

tar cvf /tmp/backups/monitor.tar /var/log/auth.log
sshpass -p "chris" tmp/backups/monitor.tar chris@ 
