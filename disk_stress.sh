#!/bin/bash

#write disk
#time dd if=/dev/zero of=/test.dbf bs=8k count=300000
#read disk
#time dd if=/dev/mapper/VolGroup00-LogVol00 of=/dev/null bs=8k

i=1
while true
do
dd if=/dev/zero of=/home/test.dbf bs=8k count=400000 >/dev/null 
echo "test $i done "
i=`expr $i + 1`
done
