#!/bin/bash 
count=100
x=0
y=0
while [ $count != 42 ]
do
	result=$(($(($RANDOM%10))%2))
	if [ $result -eq 1 ]; then
		echo Heads
		((x++))
		echo $x
		#((count++))
	elif [ $result -eq 0 ]; then
		echo Tails
		 ((y++))
		echo $y
                #((count++))

	fi
	((count= $x+$y))
done
if [ $x -gt $y ];
then	
	((z= $x-$y))
	echo "head win by $z flips"
else
	((z= $y-$x))
	echo "tail win by $z flips"
fi

