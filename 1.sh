#!/bin/bash
cont=1
maxLin=`cat ficheronombres.txt | wc -l`
while [ $cont -le $maxLin ]
do
	nombre=`cat ficheronombres.txt | head -$cont | tail -1 | awk '{print $1}'`
	mkdir $nombre
	for z in `seq 1 $1`
	do
		mkdir ./$nombre/personal$z
	done
	cont=$((cont+1))
done

