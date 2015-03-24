#!/bin/sh
fastd -c 1/fastd.conf &
F1=$!
fastd -c 2/fastd.conf &
F2=$!
echo press enter to kill fastd instances
read x
kill $F1
kill $F2
