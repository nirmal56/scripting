#!/bin/bash
################################################################################
#Author:  NIrmal Patel
#Date:  Saturday 16 July 2022 07:27:52 PM IST
#Description:  add system inventory to system database
#Modified:  Saturday 16 July 2022 07:27:52 PM IST
################################################################################
echo Please enter hostname?
read hostname
echo

        grep -q $hostname /home/nirmal/user/scripting/prof/database
        if [ $? -eq 0 ]
        then
        echo ERROR -- Hostname $hostname already exist
        echo
        exit 0
        fi

echo Please enter IP address?
read IP
echo

        grep -q $IP /home/nirmal/user/scripting/prof/database
        if [ $? -eq 0 ]
        then
        echo ERROR -- IP $IP already exist
        echo
        exit 0
        fi


echo Please enter Description?
read description
echo

echo $hostname $IP $description >> database

