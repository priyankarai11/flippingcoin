#!/bin/bash
echo "Flipping coin simulator"
arr=$((RANDOM%2))
if [ $arr -eq 0 ]
then
	echo "Heads"
else
	echo "Tails"
fi
