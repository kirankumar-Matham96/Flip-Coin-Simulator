#!/bin/bash -x

Heads=1
Tails=0
headCount=0
tailCount=0
for((i=1;i<=10;i++))
do
	result=$((RANDOM%2))
	if [ $result -eq $Heads ]
	then
		((headCount++))
	else
		((tailCount++))
	fi
done

echo "Heads won $headCount times"
echo "Tails won $tailCount times"
