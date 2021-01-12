#!/bin/bash

num=0

while [ $num -lt 1 ] || [ $num -gt 100 ]
do
	read -p "Introduce número: " num
	if [ $num -lt 1 ] || [ $num -gt 100 ]
	then
		echo "Número erróneo, introduce un número de 1 a 100"
	fi
done

for i in 1 2 3 4 5 6 7 8 9 10
do
	result=$((i*num))
	echo "$i * $num = $result"
done
