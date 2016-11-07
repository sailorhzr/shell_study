#!/bin/bash
#change eth0 and eth3 ip address

#check network status
network_status(){
loss_rate=`ping -c 5 10.107.244.147 | tail -n 2 | head -n 1 |awk -F , {'print $3'} | awk -F % {'print $1'} | awk {'print $1'}`
if [ "$loss_rate" -eq "0" ];then
    return 0	#loss rate is 0 ,network is OK
else
    return 1	#loss rate is 1 ,network is break 
fi
}

status_log() {
    echo "status log ..."
    ifconfig >> $0.log
    echo "=================================================================" >>$0.log
    route -n >>$0.log
    echo "=================================================================" >>$0.log
    ping -c 5 10.107.244.147 >> $0.log
}

#copy eth3 config
echo "sleep 600 ..."
#sleep 600
cp /root/ifcfg-eth3 /etc/sysconfig/network-scripts/ifcfg-eth3

/etc/init.d/network restart
#stop eth3
ifconfig eth3 down

#stop eth0
ifconfig eth0 down

#start eth3
ifconfig eth3 up

#if network is break , restore
for ((i=0;i<=5;i++))
do
    sleep 6
    ping -c 10 10.107.244.147  >>$0.log
done
sleep 60
network_status
if [ $? -eq 1 ];then
    echo "failed"
    status_log
    rm /etc/sysconfig/network-scripts/ifcfg-eth3
    /etc/init.d/network restart
    ifconfig eth3 down
    ifconfig xgbe0 down
    ifconfig eth0 up
else
    echo "ok"
fi


