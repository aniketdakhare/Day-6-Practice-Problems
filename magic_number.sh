#!/bin/bash

echo "Think of a number between 1 to 100"
start=1
end=100
while [ $start -lt $end ]
do
	mid=$(($(($start+$end))/2))

	echo -e "If your number is greater than $mid then write 'g' \nIf your number is less than and equal to $mid then write 'l'"
	read input
	case $input in
		l)
			end=$mid
			;;
		g)
			start=$(($mid+1))
			;;
		*)
			echo Invalid Input
			break
			;;
	esac
done

echo "Your number is "$start
