#/bin/bash
#this is full flow(FF) exception env test suit. It will be run on longevity test.

time=$1
loop=$2
((run_time=$time*$loop))
cpu_rate=0.99
mem_rate=0.99
ds="10.107.244.146"
ca="10.107.244.147"

#CPU test
net_test() {
for ((i=1;i<=$loop;i++))
do
#======packet loss
echo "EXE $ca net -s $ds -s 8080 -r -t 5" |nc localhost 53000
sleep 10
echo "EXE $ca net -s $ds -s 8080 -t 5" |nc localhost 53000	#deleted
sleep 10

#======packet delay
echo "EXE $ca net -s $ds -S 8080 -l 10/s -L 50 -t $run_time" |nc localhost 53000
sleep $run_time
done
}

net_test

