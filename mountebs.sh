#!/bin/bash
#Script to mount and unmount EBS volume in server
#Author: Christian Adedipe
#Date: 3/7/2023
#Modified: 3/7/2023


echo " Displaying mounted volume info if it exists "
ls -f /dev/xvdf && ls -n /dev/xvdf
if [ $? -eq 0 ]; then
sudo mkfs.ext2 /dev/xvdf
else
        echo " Attached Volume Not available "
        fi

        test -e /mnt/mountpoint
        if [ $? -eq 1 ]; then
        sudo mkdir /mnt/mountpoint
        sudo mount /dev/xvdf /mnt/mountpoint
        echo "/dev/xvdf /mnt/mountpoint" ext2 defaults 0 1 | sudo tee -a /etc/fstab
        echo " Successfully formatted disk and mounted EBS volume "
        else
        echo " Disk not found or volume mount failure "
        fi

echo " Please wait "
sleep 3

sudo cat /etc/fstab | grep "/mnt/mountpoint"
if [ $? -eq 0 ]; then
        read -p " Do you want to unmount volume now? y or n " var
else
        echo " You may exit now "
fi
        if [ "$var" == "y" ]; then
                echo -n " Unmount Volume from disk "
                sudo umount /dev/xvdf /mnt/mountpoint
                sleep 3
                lsblk
                echo -n " Update /etc/fstab file "
                #insert code to delete mountpoint in fstab file
        elif [ "$var" == "n" ]; then
                echo " No further action needed "
