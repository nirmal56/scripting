#!/bin/bash

for i in {1..10}
do
    echo $i
done    

for i in java python c c++
do 
    echo $i
done

for i in {1..5}
do
   rm $i
done

i=1
for day in Mon Tue Wed Thu Fri
do
 echo "Weekday $((i++)) : $day"
done

i=1
for username in `awk -F: '{print $1}' /etc/passwd`
do
 echo "Username $((i++)) : $username"
done
