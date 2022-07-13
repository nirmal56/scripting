#!/bin/bash

# List of files you are curious about
FILES="/etc/passwd

/etc/group

/etc/shadow

/etc/nsswitch.conf

/etc/ssh/ssh_config

/etc/fake"
echo

for file in $FILES

do
	if [ ! -e "$file" ]     
	then
    
	echo $file = does not exist
	echo
	fi
    
done