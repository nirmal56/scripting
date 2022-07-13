#!/bin/bash


echo "please enter day (e.g. Mon)"


read d


echo "please enter month (e.g. Aug)"


read m


echo "please enter date (e.g. 28)"


read da


last | grep "$d $m $da"