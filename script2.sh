#!/bin/bash -x
function bubbleSort(){
	ar=($@)
	arLen=${#ar[@]}
	for(( i=0 ; i<$arLen ; i++))
	do
		for(( j=0 ; j<$arLen-$i-1 ; j++ ))
		do
			if [ ${ar[j]} -gt ${ar[$((j+1))]} ]
			then
				temp=${ar[j]}
				ar[$j]=${ar[$((j+1))]}
				ar[$((j+1))]=$temp
			fi
		done
	done
	echo ${ar[@]}
}
arr=()
for k in `seq 0 9`
do
	randomNo=$((100+$RANDOM%999))
	arr[k]=$randomNo
done
sortedArr=(`bubbleSort ${arr[@]}`)
arrLen=${#sortedArr[@]}
minTwo=${sortedArr[1]}
maxTwo=${sortedArr[$arrLen-2]}
echo "Second minimum: $minTwo"
echo "Second maximum: $maxTwo"
