#!/bin/bash
count=0
x=0
while [ $count != 5 ]
do
	result=$(($(($RANDOM%10))%2))
	if [ $result -eq 1 ]; then
		echo Heads
		((x++))
		((count++))
	else
		echo Tails
		 ((y++))
                ((count++))

	fi
done
echo "Heads won =" $x
echo "Tails won = "$y
