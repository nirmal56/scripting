#!/bin/bash

echo "Please provide a username?"
read u
echo

grep -q $u /etc/passwd
        if [ $? -eq 0 ]
        then
        echo ERROR -- User $u already exist
        echo Please choose another username
        echo
        exit 0
        fi


echo "Please provide user description?"
read d
echo

useradd $u -c "$d"
echo $u account has been created