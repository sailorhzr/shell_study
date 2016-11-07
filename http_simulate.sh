#!/bin/bash

ip="10.107.231.2"
default_num=100

usage(){
echo "usage: $0 {get|post|put|head|delete} [num]"
echo "if [num] is null or illegal, default $default_num"
exit 1
}

#parameter judgement
if [ $# -lt 1 ];then
    usage
fi

if [ -z "$2" ];then
    query_num=$default_num
else
    if [ ! `echo $2 |sed 's/[0-9]//g'` ] ; then
	query_num=$2
    else
	query_num=$default_num
    fi
fi

#action define
get_action () {
for ((i=1;i<=$1;i++))
do
curl http://$ip/index.html -o a
sleep 1
echo "download loop $i done ..."
done
}

post_action () {
#curl -d "param1=value1&param2=value2" "http://10.107.244.54/index.html"
pass

}
put_action () {
echo "test" >put.log
#curl -X PUT "http://10.107.244.54/index.html"
#curl -T put.log -u test:test ftp://10.107.244.54
pass

}

head_action () {
#curl -i -X HEAD "http://outofmemory.cn/"
pass
}


delete_action () {
#curl -I -X DELETE https://api.github.cim
pass
}

case $1 in 
get)
get_action $query_num
;;

post)
post_action $query_num
;;
put)
put_action $query_num
;;

head)
head_action $query_num
;;

delete)
delete_action $query_num
;;

*)
#get_action
usage
;;

esac


