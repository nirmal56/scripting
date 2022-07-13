#!/bin/bash
for i in {1..12}
do
    touch nirmal$i.txt
done

for filename in nirmal*.txt

do
	
    mv $filename ${filename%.txt}.none
    
done
