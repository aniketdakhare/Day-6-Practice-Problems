#!/bin/bash

n=100
won=1
lost=1
while (( $n > 0 && $n < 200 ))
do
	num=$((RANDOM%2))
	if [ $num -eq 1 ]
	then
		n=$(($n+1))
		((won++))
	else
		n=$(($n-1))
		((lost++))
	fi
done
echo Gambler won $won times
total=$(($won+$lost))
echo Gambler made $total bets
