#!/bin/bash
maxLin=`cat precipitaciones.txt | wc -l`
suma=0
cont=0
prom=0
while [ $cont -le $maxLin ]
do
	litros=`cat precipitaciones.txt | head -$cont | tail -1 | awk '{print $2}'`
	suma=$((suma+litros))
	cont=$((cont+1))
done

prom=$((suma/cont))
echo "La media de litros es: $prom"
