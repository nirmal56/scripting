#!/bin/bash
################################################################################
#Author: Niraml Patel
#Date:  Saturday 16 July 2022 08:16:38 PM IST
#Description:  delete created databse
#Modified:  Saturday 16 July 2022 08:16:38 PM IST
################################################################################

#!/bin/bash

echo Please enter hostname or IP address?
read host
echo

grep -q $host /home/nirmal/user/scripting/prof/database
if [ $? -eq 0 ]
then
    echo
    sed -i '/'$host'/d' /home/nirmal/user/scripting/prof/database
    echo $host has been deleted
else
    echo Record does not exist
fi
