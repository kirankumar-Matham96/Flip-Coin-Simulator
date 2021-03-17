#!/bin/bash -x

Heads=1
Tails=0
headCount=0
tailCount=0

while [ true ]
do
	result=$((RANDOM%2))
	if [ $result -eq $Heads ]
	then
		((headCount++))
		if [ $headCount -eq 21 ]
		then
			break
		fi
	else
		((tailCount++))
		if [ $tailCount -eq 21 ]
		then
			break
		fi
	fi
done

if [ $headCount -eq $tailCount ]
then
	while [ $(($headCount-$tailCount)) -eq 2 ]
	do
		result=$((RANDOM%2))
		if [ $result -eq $Heads ]
		then
			((headCount++))
		else
			((tailCount++))
		fi
	done
elif [ $headCount -gt $tailCount ]
then
	echo "Heads won by $(($headCount-$tailCount)) majority"
else
	echo "Tails won by $(($tailCount-$headCount)) majority"
fi
