#!/bin/bash -x

n=$1
i=1
while [ $i -le $n -a $i -le 8 ]
do
       power=$( echo '2^'$i'' | bc )
        echo "2's power $i is " $power
	((i++))
done
