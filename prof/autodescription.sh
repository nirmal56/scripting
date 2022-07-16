#!/bin/bash
read -r -p "Enter name of script: " script
# read -r -p "Whats your fullname: " fname
read -r -p "Whats the description of this script: " description
echo "#!/bin/bash" > /home/nirmal/user/scripting/prof/${script}
echo
echo "################################################################################" >> /home/nirmal/user/scripting/prof/${script}
echo
echo "#Author: Nirmal Patel" >> /home/nirmal/user/scripting/prof/${script}
echo
echo "#Date: " $(date) >> /home/nirmal/user/scripting/prof/${script}
echo
echo "#Description: " $description >> /home/nirmal/user/scripting/prof/${script}
echo
echo "#Modified: " $(date) >> /home/nirmal/user/scripting/prof/${script}
echo
echo "################################################################################" >> /home/nirmal/user/scripting/prof/${script}
echo
chmod a+x ${script}
code ${script}