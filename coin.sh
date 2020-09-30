#!/bin/bash
echo "Flipping coin simulator"
arr=$((RANDOM%2))
if [ $arr -eq 0 ]
then
	echo "Heads"
else
	echo "Tails"
fi

for i in $(seq 10)
do
arr=$((RANDOM%2))
if [ $arr -eq 0 ]
then
	head=$(($head+1))
else
	tail=$(($tail+1))
fi
done
echo "Head won $head times"
echo "Tails won $tail times"
