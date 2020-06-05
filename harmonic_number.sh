#!/bin/bash -x

n=$1
h=0
for ((i=1; i<=$n; i++ ))
do
	h=$(($h+$(echo 'scale=3; 1/'$i'' | bc )))
done
echo $h
