#!/bin/bash
echo "Flipping coin simulator"
echo "user case 1"
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
echo "Counting process usercase 2&3"

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

function tie
{
head=0
tail=0

for i in $(seq 42)
do
arr=$((RANDOM%2))
if [ $arr -eq 0 ]
then
	head=$(($head+1))
else
	tail=$(($tail+1))
fi
done


if [ $head -gt $tail ]
then
	echo "Head wins $head times"
fi
if [ $tail -gt $head ]
then
	echo "Tail won $tail times"
fi


if [[ $head -eq $tail ]]
then
	echo "Its a tie"
	echo "Again toss it"
        tie

fi

echo "***************"
echo "Final count user case 4"
echo "Head =$head"
echo "Tails=$tail"

a=$(($head-$tail))
if [[ $a -gt -1 && $a -lt 2 ]]
then
	tie
fi

b=$(($tail-$head))
if [[ $b -gt -1 && $b -lt 2 ]]
then
        tie
fi
}
#calling function
tie


