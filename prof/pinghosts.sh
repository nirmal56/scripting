#!/bin/bash

ping -c1 10.0.2.15
        if [ $? -eq 0 ]
        then
        echo OK
        else
        echo NOT OK
        fi

# Change the IP to 192.168.1.235


# # Don't show the output
ping -c1 10.0.2.15 &> /dev/null
        if [ $? -eq 0 ]
        then
        echo OK
        echo Data transfered to /dev/null 
        else
        echo NOT OK
        fi


# # Define variable

hosts="10.0.2.15"
ping -c1 $hosts &> /dev/null
        if [ $? -eq 0 ]
        then
        echo $hosts OK
        else
        echo $hosts NOT OK
        fi

# # Change the IP to 192.168.1.235




# # Multiple IPs
