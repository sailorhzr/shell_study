#/bin/bash
#this is full flow(FF) exception env test suit. It will be run on longevity test.

time=$1
loop=$2
((run_time=$time * $loop))
cpu_rate=0.99
mem_rate=0.99
ds="10.107.244.146"
ca="10.107.244.147"

#memory test
for ((i=1;i<=$loop;i++))
do

echo "EXE $ds mem -g 0 -m 1 -i $run_time -v $mem_rate" |nc localhost 53000
echo "EXE $ca mem -g 0 -m 1 -i $run_time -v $mem_rate" |nc localhost 53000
sleep $run_time
echo "EXE $ds mem -g 1 -m 1 -i $run_time -v $mem_rate" |nc localhost 53000
echo "EXE $ca mem -g 1 -m 1 -i $run_time -v $mem_rate" |nc localhost 53000
sleep $run_time
echo "EXE $ds mem -g 2 -m 1 -i $run_time -v $mem_rate" |nc localhost 53000
echo "EXE $ca mem -g 2 -m 1 -i $run_time -v $mem_rate" |nc localhost 53000
sleep $run_time
echo "EXE $ds mem -g 3 -m 1 -i $run_time -v $mem_rate" |nc localhost 53000
echo "EXE $ca mem -g 3 -m 1 -i $run_time -v $mem_rate" |nc localhost 53000
sleep $run_time

done
