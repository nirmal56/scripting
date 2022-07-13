
#!/bin/bash


a=`df -h | egrep -v "tmpfs|devtmpfs" | tail -n+2 | awk '{print $5}' | cut -d'%' -f1`

for i in $a
do
    if [ $i -ge 90 ]
    then
        echo Check disk space $i `df -h | grep $i`
    fi
done


# Another way:
# #!/bin/sh

# df -H | grep -vE '^Filesystem|tmpfs|cdrom' | awk '{print $5,$1}' | while read output
# do
#         usep=$(echo $output | awk '{print $1}' | cut -d'%' -f1  )
#         partition=$(echo $output | awk '{print $2}' )
        
# 	if [ $usep -ge 90 ]
# 	then
#         echo "Running out of space \"$partition ($usep%)\" on $(hostname) as on $(date)"
#         fi
# done


# --------------------------------------------

# Or Simply

# Write a script to awk only those rows with the value


# df -h | awk '0+$5 >= 10 {print}'


# To make it presentable

# echo
# echo Following is the disk space status
# echo
# df -h | awk '0+$5 >= 10 {print}' | awk '{print $5, $6}'
