#!/bin/bash

#write disk
#time dd if=/dev/zero of=/test.dbf bs=8k count=300000
#read disk
#time dd if=/dev/mapper/VolGroup00-LogVol00 of=/dev/null bs=8k

full_path="/home/disk_full"

usage(){
echo "usage $0 { stress | full }"
}

disk_stress(){
i=1
while true
do
dd if=/dev/zero of=/home/test.dbf bs=8k count=400000 >/dev/null 
echo "test $i done "
i=`expr $i + 1`
done
}

disk_full(){
if [ ! -d $full_path ];then
    echo "no test folder, create $full_path"
    mkdir -p $full_path
fi

df && echo -n "Do you want full which disk (such as /dev/sda6): "
read disk_ID

disk_size=`df -h | grep $disk_ID | awk {'print $4'} | awk -F G {'print $1'} `

if [  `echo $disk_size |sed 's/[0-9]//g'` ];then
    echo "your input error ... disk_ID: $disk_ID disk_size: $disk_size"
    exit 0
fi

for ((i=1;i<=$disk_size;i++))
do
    dest=$full_path/test$i
    `dd if=/dev/zero of=./test bs=10k count=102400`
    echo "temp file $dest done"
done

}

case $1 in
stress)
disk_stress
;;

full)
disk_full
;;

*)
usage
;;
esac
