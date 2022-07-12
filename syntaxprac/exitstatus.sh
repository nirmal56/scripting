#!/bin/bash

ls -l /home/nirmal/user/scripting/exitstatus.sh

if [ $? -eq 0 ]
then 
echo File exists
else
echo File Does not exists
fi