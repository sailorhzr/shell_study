#!/bin/bash
#set iptables rule for full flow test

usage(){
echo "default run $0 show"
echo "usgae: $0 {show|clean|inbound|outbound}"
exit 0
}
clear_iptables_mangle(){
iptables -t mangle -F
}

add_inbound_tos(){
iptables -t mangle -A OUTPUT -j TOS --set-tos 0x04
}

add_outbound_tos(){
iptables -t mangle -A OUTPUT -j TOS --set-tos 0x08
}

show_iptabels(){
iptables -L -t mangle
}

#main
case "$1" in 
show)
show_iptabels
;;

clean)
clear_iptables_mangle
;;

inbound)
add_inbound_tos
;;

outbound)
add_outbound_tos
;;

*)
show_iptabels
usage
;;
esac
