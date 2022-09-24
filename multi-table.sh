#!/bin/sh

if [ $# -eq 2 ]
then
	if [ $1 -gt 0 -a $2 -gt 0 ]
	then
	
		for i in $(seq 1 $1)
		do

			for j in $(seq 1 $2)
			do
				result=`expr $i \* $j`
				printf "$i*$j=$result\t"
			done
	
			echo

		done
	else
		echo Input must be greater than 0
	fi
else
	echo Invalid input
fi
exit 0
