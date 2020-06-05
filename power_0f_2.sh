#!/bin/bash -x

n=$1
for ((i=1; i<=$n; i++ ))
do
       power=$( echo '2^'$i'' | bc )
        echo "2's power $i is " $power
done
