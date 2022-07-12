#!/bin/bash
count=100
num=1
if [ $count -eq 100 ]
then
    echo byr bye
elif [ $(($count+$num)) -eq 101 ]
then
    echo hihi
else
    echo nothing
fi