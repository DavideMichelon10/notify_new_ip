#!/bin/bash
filename='/home/davide/Desktop/notify_new_ip/new_ip.txt'
n=1
while true; do
	while read line; do
		echo "read line: $line"
		letter=${line:0:1}
		ip=${line:2}
		if [ $letter = "A" ]
		then
			echo "IS A"
			ipvsadm -a -t 79.152.0.59:80 -r $ip -m
		elif [ $letter = "R" ]
		then
			sudo ipvsadm -d -t 79.152.0.59:80 -r $ip
		fi
		#sudo ipvsadm -a -t 79.152.0.59:80 -r $line -m
		sed -i "1 d" $filename
		n=$((n+1))
	done < $filename
	echo "page"
	sleep 30;
done
