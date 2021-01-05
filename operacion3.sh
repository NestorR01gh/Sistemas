#!/bin/bash
read -p "Introduce día: " dia
read -p "Introduce mes: " mes
cont=1
maxLin=`cat usuarios.txt | wc -l`
while [ $cont -le $maxLin ]
do
	dias=`cat usuarios.txt | head -$cont | tail -1 | awk '{print $2}'`
	meses=`cat usuarios.txt | head -$cont | tail -1 | awk '{print $3}'`
	if [[ $dia -eq $dias && $mes -eq $meses ]]
	then
		echo `cat usuarios.txt | head -$cont | tail -1 | awk '{print $1}'`
	fi
	cont=$((cont+1))
done