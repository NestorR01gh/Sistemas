#!/bin/bash

cont=1
resto=0

while [ $cont -le 105 ]
do
	resto=$((cont%5))
	if [ $resto -eq 0 ]
	then
		echo "$cont es múltiplo de 5"
	fi
	cont=$((cont+1))
done
