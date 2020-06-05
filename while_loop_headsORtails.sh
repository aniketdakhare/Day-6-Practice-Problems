#!/bin/bash 

heads=1
tails=1
while [ $heads -le 11 -a $tails -le 11 ]
do
	coin=$((RANDOM%2))
	if [ $coin -eq 0 ]
	then
		echo Heads
		((heads++))
	else
		echo Tails
		((tails++))
	fi
done
