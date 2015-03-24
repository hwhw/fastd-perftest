#!/bin/sh
fastd -c 1/fastd.conf &
F1=$!
fastd -c 2/fastd.conf &
F2=$!
echo waiting a bit
sleep 2
ip link set up dev fast1
ip link set up dev fast2
echo waiting for IPv6 autoconfig
sleep 2
iperf -V -s &
IPF1=$!
sleep 1
F1IP=`ip -6 addr show fast1|awk '/ +inet6/{print $2}'|awk 'BEGIN{FS="/"}{print $1}'`
iperf -V -c $F1IP%fast2
kill $F1
kill $F2
kill $IPF1
