#!/bin/bash

for i in {1..10}

do

	touch nirmal.$i
    ls -ltr
    rm nirmal.$i
done
