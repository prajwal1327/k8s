#!/bin/bash
echo "read ip"
read ip
grep -i "$ip" ip.sh 
if [ $? -eq 0 ]
then
	echo "true"
else
	echo "false"
fi

