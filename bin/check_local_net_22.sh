#!/bin/bash
echo "best to redirect to file and grep for WORKS"
for (( c=100; c<=255; c++ ))
do
	#echo 192.168.1.$c
	nc -zv -w1 192.168.1.$c 22
	rc=$?
	if [[ $rc == 0 ]]
	then
	    echo "192.168.1.$c -- OK WORKS !!"
	fi
done
