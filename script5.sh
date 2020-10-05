#!/bin/bash -x
function isPalindrome(){
	num=$1
	sum=0
	while [ $num -ne 0 ]
	do
		r=`expr $num % 10`
		sum=`expr $(($sum * 10)) + $r`
		num=`expr $num / 10`
	done
	if [ $1 -eq $sum ]
	then
		return 0
	else
		return 1
	fi
}
arr=()
index=0
for i in `seq 10 100`
do
	if isPalindrome $i
	then
		arr[((index++))]=$i
	fi
done
echo ${arr[@]}
