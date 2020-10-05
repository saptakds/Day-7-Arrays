#!/bin/bash -x
arr=()
for i in `seq 0 9`
do
	randomNo=$((100+$RANDOM%999))
	arr[i]=$randomNo
done
first=${arr[0]}
min=$first
minTwo=$first
max=$first
maxTwo=$first
for j in ${arr[@]}
do
	if [ $j -lt $min ]
	then
		minTwo=$min
		min=$j
	elif [ $j -lt $minTwo -a $j -ne $min ]
	then
		minTwo=$j
	fi
	if [ $j -gt $max ]
    then
        maxTwo=$max
        max=$j
    elif [ $j -gt $maxTwo -a $j -ne $max ]
    then
        maxTwo=$j
    fi
done
echo "Second minimum: $minTwo"
echo "Second maximum: $maxTwo"
