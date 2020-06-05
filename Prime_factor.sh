#!/bin/bash

read -p "Enter the Number  " num

for ((i = 2; $num > 1 ; i++))
do
	for (( j=$i; $(($num%$i)) == 0 ; j++ ))
	do
		echo $i
		num=$(($num/$i))
	done
done
