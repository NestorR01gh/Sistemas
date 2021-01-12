#!/bin/bash

numRandom=`echo $((RANDOM%99))`
numRandom=$((numRandom+1))
num=0
puntos=100


while [ $puntos -ge 1 ]
do
	read -p "Introduce número: " num
	puntos=$((puntos-1))
	multiplo="false"
	resto=$((numRandom%num))
	for i in `seq 1 100`
	do
		result=$((i*num))
		if [ $result -eq $numRandom ]
		then
			multiplo="true"
		fi
	done
	if [ $num -eq $numRandom ]
	then
		echo "Felicidades el número era $numRandom, los puntos obtenidos son $puntos"
	else
	if [ $resto -eq 0 ]
	then
		echo "El número $num es divisor"
	fi
	if [ $multiplo = "true" ]
	then
		echo "El número $num es múltiplo"
	fi
	if [ $multiplo = "false" ] & [ $resto -ne 0 ]
	then
		echo "El número $num no es ni el número a adivinar ni múltiplo o divisor del mismo"
	fi
	fi
done

if [ $puntos -eq 0 ]
then
	echo "Vaya has consumido todos los intentos, tú puntuación es $puntos y el número era $numRandom, suerte a la próxima"
fi
