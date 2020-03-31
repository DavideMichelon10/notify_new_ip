#!/bin/bash
filename='/home/davide/new_ip.txt'
n=1
while read line; do
	echo "read line: $line"
	sudo ipvsadm -a -t 79.152.0.59:80 -r $line -m
	sed -i "1 d" $filename
	n=$((n+1))
done < $filename
