
#!/bin/bash

a=`ls -l file*.txt | wc -l`

if [ $a -eq 20 ]
then
    echo Yes there are $a files
else
    echo Files are less than 20 $a
fi