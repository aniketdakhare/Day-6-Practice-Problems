#!/bin/bash

function check_prime()
{
	num=$1
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
	count=0
}

function check_palindrom()
{
        num=$1
	check_prime $num
        r=0
        temp=$num
        sum=0
        while [ $temp -gt 0 ]
        do
                r=$(($temp%10))
                sum=$(($(($sum*10))+r))
                temp=$(($temp/10))
        done
	echo Palindrom oF $num is $sum
	check_prime $sum

}
read -p "enter the Number  "  value
check_palindrom $value
