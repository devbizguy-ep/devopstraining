#!/bin/bash
#Author Christian Adedipe
#Script to pull error messages from log file
#Date: 2/26/2023

grep -i error /var/log/messages.txt
