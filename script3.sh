#!/bin/bash -x
function isPrime(){
	if [ $1 -eq 2 ]
	then
		return 0
    elif [ $(($1 % 2)) -eq 0 ]
    then
        return 1
    fi
    for(( i=3 ; i<=$(($1/2)) ; i+=2 ))
    do
        if [ $(($1 % $i)) -eq 0 ]
        then
            return 1
        fi
    done
    return 0
}
arr=()
k=0
read -p "Enter N: " N
for (( j=2 ; $((j*j))<=$N ; j++ ))
do
if [ $(($N % $j)) -eq 0 ]
	then
		if isPrime $j
    	then
        	arr[$k]=$j
			((k++))
		else
			continue
    	fi
	fi
done
echo ${arr[@]}
