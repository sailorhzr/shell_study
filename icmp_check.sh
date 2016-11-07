#!/bin/bash
#test full flow test

#inbound icmp flow
ping -c 100 10.107.244.54 -I eth2 -Q 0x04 &

#outbound icmp flow
#ping -c 100 10.107.244.54 -I eth2 -Q 0x08
