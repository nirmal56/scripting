#!/bin/bash
IPLIST="/home/nirmal/user/scripting/prof/ipaddr.txt"


for ip in $(cat $IPLIST)

do
   ping -c1 $ip &> /dev/null
   if [ $? -eq 0 ]
   then
   echo $ip ping passed
   else
   echo $ip ping failed
   fi
done
