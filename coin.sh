#!/bin/bash
echo "Flipping coin simulator"
arr=$((RANDOM%2))
if [ $arr -eq 0 ]
then
	echo "Heads"
else
	echo "Tails"
fi
echo "-----------"
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
echo "Counting process"
echo "Head=$head"
echo "Tails=$tail"
if [ $head -gt $tail ]
then
	a=$(($head-$tail))
	echo "Head won and the lead = $a than tails"
elif [ $tail -gt $head ]
then
	b=$(($tail-$head))
        echo "Tail won and the lead = $b than Head"
else
	echo "Its a tie "
fi



