#!/bin/bash

for i in nirmal*

do

	echo Assigning write permissions to $i
	
    chmod a+w $i

	sleep 1

done