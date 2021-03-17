#!/bin/bash -x

Heads=1
Tails=0

result=$((RANDOM%2))

if [ $result -eq $Heads ]
then
	echo "Heads wins"
else
	echo "Tails wins"
fi
