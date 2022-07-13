#!/bin/bash
# nirmal@nirmal-VirtualBox:/tmp$ logger -t error "eeerror"
# 
tail -Fn0 /var/log/syslog | 
while read line

do
    echo $line | egrep -i "refused|invalid|error|fail|lost|shut|down|offline"    
    if [ $? = 0 ]   
    then
        echo $line >> /tmp/filtered-messages
        echo $line
    fi
done
