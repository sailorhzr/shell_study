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
cpu_test() {
for ((i=1;i<=$loop;i++))
do
echo "EXE $ds cpu -r $cpu_rate -t $run_time" |nc localhost 53000
echo "EXE $ca cpu -r $cpu_rate -t $run_time" |nc localhost 53000
sleep $run_time
done
}

cpu_test

