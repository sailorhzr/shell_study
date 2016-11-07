#!/bin/bash

#case 1 UDP Reflect Flood : UDP srcport
#curl -d 'attack_type=udp_payload&type_of_service=4&pps=1000&sip_base=1.1.1.1&sip_step=1&sip_cnt=4294967296&dip_base=31.31.31.31&dip_step=1&dip_cnt=4294967296&ip_check_sum_type=1&ip_protocol=17&sport_base=53&sport_cnt=1&sport_step=1&dport_base=8080&dport_step=10&dport_cnt=9000&content=nishiwotianbianzuimeideyuncai' 10.107.244.46:8000/add/svc
#curl -d 'attack_type=udp_payload&type_of_service=8&pps=1000&sip_base=31.31.31.32&sip_step=1&sip_cnt=4294967296&dip_base=61.61.61.61&dip_step=1&dip_cnt=4294967296&ip_check_sum_type=1&ip_protocol=17&sport_base=53&sport_cnt=1&sport_step=1&dport_base=8080&dport_step=10&dport_cnt=9000&content=nishiwotianbianzuimeideyuncai' 10.107.244.46:8000/add/svc

#case 2 UDP Flood : UDP srcip
#curl -d 'attack_type=udp_payload&type_of_service=4&pps=1000&sip_base=61.61.61.62&sip_step=1&sip_cnt=4294967296&dip_base=91.91.91.91&dip_step=1&dip_cnt=4294967296&ip_check_sum_type=1&ip_protocol=17&sport_base=53&sport_cnt=100&sport_step=1&dport_base=8080&dport_step=10&dport_cnt=9000&content=nishiwotianbianzuimeideyuncai' 10.107.244.46:8000/add/svc
#curl -d 'attack_type=udp_payload&type_of_service=8&pps=1000&sip_base=91.91.91.92&sip_step=1&sip_cnt=4294967296&dip_base=121.121.121.121&dip_step=1&dip_cnt=4294967296&ip_check_sum_type=1&ip_protocol=17&sport_base=53&sport_cnt=100&sport_step=1&dport_base=8080&dport_step=10&dport_cnt=9000&content=nishiwotianbianzuimeideyuncai' 10.107.244.46:8000/add/svc

#case 3 TCP Flood : TCP srcip
curl -d 'attack_type=tcp_payload&type_of_service=4&pps=100&sip_base=128.128.0.1&sip_step=1&sip_cnt=1&dip_base=231.231.231.1&dip_step=1&dip_cnt=100&ip_check_sum_type=1&ip_protocol=6&sport_base=80&sport_cnt=200&sport_step=2&dport_base=8080&dport_step=10&dport_cnt=9000&content=nishiwotianbianzuimeideyuncai' 10.107.244.46:8000/add/svc
#curl -d 'attack_type=tcp_payload&type_of_service=4&pps=100&sip_base=128.128.0.1&sip_step=1&sip_cnt=1&dip_base=2.2.2.1&dip_step=1&dip_cnt=250&ip_check_sum_type=1&ip_protocol=6&sport_base=80&sport_cnt=200&sport_step=2&dport_base=8080&dport_step=10&dport_cnt=9000&content=nishiwotianbianzuimeideyuncai' 10.107.244.46:8000/add/svc
#curl -d 'attack_type=tcp_payload&type_of_service=4&pps=100&sip_base=128.128.0.1&sip_step=1&sip_cnt=1&dip_base=3.3.3.1&dip_step=1&dip_cnt=250&ip_check_sum_type=1&ip_protocol=6&sport_base=80&sport_cnt=200&sport_step=2&dport_base=8080&dport_step=10&dport_cnt=9000&content=nishiwotianbianzuimeideyuncai' 10.107.244.46:8000/add/svc
#curl -d 'attack_type=tcp_payload&type_of_service=4&pps=100&sip_base=128.128.0.1&sip_step=1&sip_cnt=1&dip_base=4.4.4.1&dip_step=1&dip_cnt=250&ip_check_sum_type=1&ip_protocol=6&sport_base=80&sport_cnt=200&sport_step=2&dport_base=8080&dport_step=10&dport_cnt=9000&content=nishiwotianbianzuimeideyuncai' 10.107.244.46:8000/add/svc
#curl -d 'attack_type=tcp_payload&type_of_service=4&pps=100&sip_base=128.128.0.1&sip_step=1&sip_cnt=1&dip_base=5.5.5.1&dip_step=1&dip_cnt=250&ip_check_sum_type=1&ip_protocol=6&sport_base=80&sport_cnt=200&sport_step=2&dport_base=8080&dport_step=10&dport_cnt=9000&content=nishiwotianbianzuimeideyuncai' 10.107.244.46:8000/add/svc
##curl -d 'attack_type=tcp_payload&type_of_service=4&pps=100&sip_base=128.128.0.1&sip_step=1&sip_cnt=1&dip_base=6.6.6.1&dip_step=1&dip_cnt=250&ip_check_sum_type=1&ip_protocol=6&sport_base=80&sport_cnt=200&sport_step=2&dport_base=8080&dport_step=10&dport_cnt=9000&content=nishiwotianbianzuimeideyuncai' 10.107.244.46:8000/add/svc
#curl -d 'attack_type=tcp_payload&type_of_service=4&pps=100&sip_base=128.128.0.1&sip_step=1&sip_cnt=1&dip_base=7.7.7.1&dip_step=1&dip_cnt=250&ip_check_sum_type=1&ip_protocol=6&sport_base=80&sport_cnt=200&sport_step=2&dport_base=8080&dport_step=10&dport_cnt=9000&content=nishiwotianbianzuimeideyuncai' 10.107.244.46:8000/add/svc
#curl -d 'attack_type=tcp_payload&type_of_service=4&pps=100&sip_base=128.128.0.1&sip_step=1&sip_cnt=1&dip_base=8.8.8.1&dip_step=1&dip_cnt=250&ip_check_sum_type=1&ip_protocol=6&sport_base=80&sport_cnt=200&sport_step=2&dport_base=8080&dport_step=10&dport_cnt=9000&content=nishiwotianbianzuimeideyuncai' 10.107.244.46:8000/add/svc
#curl -d 'attack_type=tcp_payload&type_of_service=4&pps=100&sip_base=128.128.0.1&sip_step=1&sip_cnt=1&dip_base=9.9.9.1&dip_step=1&dip_cnt=250&ip_check_sum_type=1&ip_protocol=6&sport_base=80&sport_cnt=200&sport_step=2&dport_base=8080&dport_step=10&dport_cnt=9000&content=nishiwotianbianzuimeideyuncai' 10.107.244.46:8000/add/svc
#curl -d 'attack_type=tcp_payload&type_of_service=4&pps=100&sip_base=128.128.0.1&sip_step=1&sip_cnt=1&dip_base=10.10.10.1&dip_step=1&dip_cnt=250&ip_check_sum_type=1&ip_protocol=6&sport_base=80&sport_cnt=200&sport_step=2&dport_base=8080&dport_step=10&dport_cnt=9000&content=nishiwotianbianzuimeideyuncai' 10.107.244.46:8000/add/svc
#curl -d 'attack_type=tcp_payload&type_of_service=8&pps=1000&sip_base=151.151.151.152&sip_step=1&sip_cnt=4294967296&dip_base=181.181.181.181&dip_step=1&dip_cnt=4294967296&ip_check_sum_type=1&ip_protocol=6&sport_base=80&sport_cnt=200&sport_step=2&dport_base=8080&dport_step=10&dport_cnt=9000&content=nishiwotianbianzuimeideyuncai' 10.107.244.46:8000/add/svc

#case 4 ICMP Flood : ICMP srcip
#curl -d 'attack_type=icmp_ddos&type_of_service=4&pps=1000&sip_base=181.181.181.182&sip_step=1&sip_cnt=4294967296&dip_base=211.211.211.211&dip_step=1&dip_cnt=4294967296&ip_check_sum_type=1&ip_protocol=1&icmp_type=8' 10.107.244.46:8000/add/svc
#curl -d 'attack_type=icmp_ddos&type_of_service=8&pps=1000&sip_base=211.211.211.212&sip_step=1&sip_cnt=4294967296&dip_base=241.241.241.241&dip_step=1&dip_cnt=4294967296&ip_check_sum_type=1&ip_protocol=1&icmp_type=8' 10.107.244.46:8000/add/svc

#case 5 CC Flood (srcip+host) : HTTP srcip+host ===========Segmentation fault
#curl -d 'attack_type=http_cc&type_of_service=4&pps=1000&sip_base=210.180.0.1&sip_step=1&sip_cnt=1&dip_base=58.217.202.180&dip_step=1&dip_cnt=1&ip_check_sum_type=1&ip_protocol=6&sport_base=80&sport_cnt=2&sport_step=1&dport_base=8080&dport_step=1&dport_cnt=30&tcp_flags=psh&http_method=GET|PUT|POST&http_header=Content-Type: application/json|Host: www.google.com|Referer: hetu.baidu.com|User-Agent: expg/raw|Cookie: weuwheuwhuuuuueuwehu&http_uri=/&content=nishiwotianbianzuimeideyuncai' 10.107.244.46:8000/add/svc

#case 6 CC Flood (srcip+uri) : HTTP srcip+uri ===========Segmentation fault
#curl -d 'attack_type=http_cc&type_of_service=4&pps=1000&sip_base=210.180.0.1&sip_step=1&sip_cnt=1&dip_base=58.217.202.180&dip_step=1&dip_cnt=1&ip_check_sum_type=1&ip_protocol=6&sport_base=80&sport_cnt=2&sport_step=1&dport_base=8080&dport_step=1&dport_cnt=30&tcp_flags=psh&http_method=GET|PUT|POST&http_header=Content-Type: application/json|Host: www.google.com|Referer: hetu.baidu.com|User-Agent: expg/raw|Cookie: weuwheuwhuuuuueuwehu&http_uri=/&content=nishiwotianbianzuimeideyuncai' 10.107.244.46:8000/add/svc

#case 7 CC Flood (srcip+ua) : HTTP srcip+ua ===========Segmentation fault
#curl -d 'attack_type=http_cc&type_of_service=4&pps=1000&sip_base=210.180.0.1&sip_step=1&sip_cnt=1&dip_base=58.217.202.180&dip_step=1&dip_cnt=1&ip_check_sum_type=1&ip_protocol=6&sport_base=80&sport_cnt=2&sport_step=1&dport_base=8080&dport_step=1&dport_cnt=30&tcp_flags=psh&http_method=GET|PUT|POST&http_header=Content-Type: application/json|Host: www.google.com|Referer: hetu.baidu.com|User-Agent: expg/raw|Cookie: weuwheuwhuuuuueuwehu&http_uri=/&content=nishiwotianbianzuimeideyuncai' 10.107.244.46:8000/add/svc


#case 8 CC Flood (srcip+cookie) : HTTP srcip+cookie
#curl -d 'attack_type=http_cc&type_of_service=4&pps=1000&sip_base=210.180.0.1&sip_step=1&sip_cnt=1&dip_base=58.217.202.180&dip_step=1&dip_cnt=1&ip_check_sum_type=1&ip_protocol=6&sport_base=80&sport_cnt=2&sport_step=1&dport_base=8080&dport_step=1&dport_cnt=30&tcp_flags=psh&http_method=GET|PUT|POST&http_header=Content-Type: application/json|Host: www.google.com|Referer: hetu.baidu.com|User-Agent: expg/raw|Cookie: weuwheuwhuuuuueuwehu&http_uri=/&content=nishiwotianbianzuimeideyuncai' 10.107.244.46:8000/add/svc


#case 9 CC Flood (srcip+referer) : HTTP srcip+referer
#curl -d 'attack_type=http_cc&type_of_service=4&pps=1000&sip_base=210.180.0.1&sip_step=1&sip_cnt=1&dip_base=58.217.202.180&dip_step=1&dip_cnt=1&ip_check_sum_type=1&ip_protocol=6&sport_base=80&sport_cnt=2&sport_step=1&dport_base=8080&dport_step=1&dport_cnt=30&tcp_flags=psh&http_method=GET|PUT|POST&http_header=Content-Type: application/json|Host: www.google.com|Referer: hetu.baidu.com|User-Agent: expg/raw|Cookie: weuwheuwhuuuuueuwehu&http_uri=/&content=nishiwotianbianzuimeideyuncai' 10.107.244.46:8000/add/svc


#case 10 CC Flood (host) : HTTP host
#curl -d 'attack_type=http_cc&type_of_service=4&pps=1000&sip_base=210.180.0.1&sip_step=1&sip_cnt=1&dip_base=58.217.202.180&dip_step=1&dip_cnt=1&ip_check_sum_type=1&ip_protocol=6&sport_base=80&sport_cnt=2&sport_step=1&dport_base=8080&dport_step=1&dport_cnt=30&tcp_flags=psh&http_method=GET|PUT|POST&http_header=Content-Type: application/json|Host: www.google.com|Referer: hetu.baidu.com|User-Agent: expg/raw|Cookie: weuwheuwhuuuuueuwehu&http_uri=/&content=nishiwotianbianzuimeideyuncai' 10.107.244.46:8000/add/svc


#case 11 CC Flood (uri) : HTTP uri
#curl -d 'attack_type=http_cc&type_of_service=4&pps=1000&sip_base=210.180.0.1&sip_step=1&sip_cnt=1&dip_base=58.217.202.180&dip_step=1&dip_cnt=1&ip_check_sum_type=1&ip_protocol=6&sport_base=80&sport_cnt=2&sport_step=1&dport_base=8080&dport_step=1&dport_cnt=30&tcp_flags=psh&http_method=GET|PUT|POST&http_header=Content-Type: application/json|Host: www.google.com|Referer: hetu.baidu.com|User-Agent: expg/raw|Cookie: weuwheuwhuuuuueuwehu&http_uri=/&content=nishiwotianbianzuimeideyuncai' 10.107.244.46:8000/add/svc


#case 12 CC Flood (ua) : HTTP ua
#curl -d 'attack_type=http_cc&type_of_service=4&pps=1000&sip_base=210.180.0.1&sip_step=1&sip_cnt=1&dip_base=58.217.202.180&dip_step=1&dip_cnt=1&ip_check_sum_type=1&ip_protocol=6&sport_base=80&sport_cnt=2&sport_step=1&dport_base=8080&dport_step=1&dport_cnt=30&tcp_flags=psh&http_method=GET|PUT|POST&http_header=Content-Type: application/json|Host: www.google.com|Referer: hetu.baidu.com|User-Agent: expg/raw|Cookie: weuwheuwhuuuuueuwehu&http_uri=/&content=nishiwotianbianzuimeideyuncai' 10.107.244.46:8000/add/svc


#case 13 CC Flood (cookie) : HTTP cookie
#curl -d 'attack_type=http_cc&type_of_service=4&pps=1000&sip_base=210.180.0.1&sip_step=1&sip_cnt=1&dip_base=58.217.202.180&dip_step=1&dip_cnt=1&ip_check_sum_type=1&ip_protocol=6&sport_base=80&sport_cnt=2&sport_step=1&dport_base=8080&dport_step=1&dport_cnt=30&tcp_flags=psh&http_method=GET|PUT|POST&http_header=Content-Type: application/json|Host: www.google.com|Referer: hetu.baidu.com|User-Agent: expg/raw|Cookie: weuwheuwhuuuuueuwehu&http_uri=/&content=nishiwotianbianzuimeideyuncai' 10.107.244.46:8000/add/svc


#case 14 CC Flood (referer) : HTTP referer
#curl -d 'attack_type=http_cc&type_of_service=4&pps=1000&sip_base=210.180.0.1&sip_step=1&sip_cnt=1&dip_base=58.217.202.180&dip_step=1&dip_cnt=1&ip_check_sum_type=1&ip_protocol=6&sport_base=80&sport_cnt=2&sport_step=1&dport_base=8080&dport_step=1&dport_cnt=30&tcp_flags=psh&http_method=GET|PUT|POST&http_header=Content-Type: application/json|Host: www.google.com|Referer: hetu.baidu.com|User-Agent: expg/raw|Cookie: weuwheuwhuuuuueuwehu&http_uri=/&content=nishiwotianbianzuimeideyuncai' 10.107.244.46:8000/add/svc

#mixed flow
mixed_flow(){
pass
fkey='attack_type=tcp_payload&type_of_service=4&pps=100&sip_base=128.128.0.1&sip_step=1&sip_cnt=1&dip_base='
bkey='&dip_step=1&dip_cnt=100&ip_check_sum_type=1&ip_protocol=6&sport_base=80&sport_cnt=200&sport_step=2&dport_base=8080&dport_step=10&dport_cnt=9000&content=nishiwotianbianzuimeideyuncai'
dip='1.1.1.1'
client=" 10.107.244.46:8000/add/svc"

cmd=$fkey$dip$bkey

curl -d $cmd $client

}

#main
