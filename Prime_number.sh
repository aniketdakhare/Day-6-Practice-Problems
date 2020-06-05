#!/bin/bash

read -p "Enter the number  " num
for ((j=1; j<=$num/2 ; j++))
do
	if [ $(($num%$j)) -eq 0 ]
        then
        	((count++))
        fi
done
if [ $count -eq 1 ]
then
	echo $num is prime number
else
	echo $num is not prime number
fi
