#!/bin/bash

dia=-1
cont=0

while [ $dia -lt 1 ] || [ $dia -gt 30 ]
do
	read -p "Introduce día (1..30): " dia
done

while [ true ]
do
	for i in Lunes Martes Miércoles Jueves Viernes Sábado Domingo
	do
		cont=$((cont+1))
		if [ $cont == $dia ]
		then
			echo "El día es $i"
			exit
		fi
	done
done	
