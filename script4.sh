#!/bin/bash -x
read -p "Enter no. of integers:" n
arr=()
for num in `seq 0 $(($n-1))`
do
	read -p "Enter no.:" arr[$num]
done
flag=0
for (( i=0 ; i<$n-2 ; i++ ))
do
	for(( j=$i+1; j<$n-1 ; j++ ))
	do
		for(( k=$j+1 ; k<$n ; k++ ))
		do
			if [ $((${arr[$i]}+${arr[$j]}+${arr[$k]})) -eq 0 ]
			then
				echo "${arr[$i]} ${arr[$j]} ${arr[$k]}"
				flag=1
			fi
		done
	done
done
if [ $flag -eq 0 ]
then
	echo "Doesn't exist"
fi
