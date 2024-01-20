#!/bin/bash

# Finding out the current disk usage

# Below command is used to find out the current disk utilization of the system.

# first df command is used to list out all disk part usage.
# Along other commands awk and tr are used for string manipulation.

DISK_SPACE=$(df -l | egrep "sda1[^(0-9)]" | awk '{print $5}' | tr -d %)

# Set condition 
# Sending alert email to user if any only if disk space is above certain level.
# Here I included my email but we can add as per are requirement

if [[ $DISK_SPACE -ge 75 ]]

then
        # sending an email to user.

	echo -e " !!!!!!!!!!!! Disk Space Alert !!!!!!!!!!!!!!!\n\n Your server disk space is above the certain level.\n you have to look out this immediately!!" | 
		mail -s " DISK SPACE ALERT - ON SERVER" vjp2741.patidar@gmail.com

else
	echo "Hi $DISK_SPACE"
fi


