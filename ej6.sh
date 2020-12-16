#!/bin/bash

litros=-1
coste=0

while [ $litros -le 0 ]
do
	read -p "Litros: " litros
done

if [ $litros -le 50 ]
then
	coste=20
elif [ $litros -le 200 ]
then
	restantes=$((litros-50))
	coste=$((restantes*0.2+20))
else
	restantes=$((litros-200))
	coste=$((restantes*0.1+50))
fi

echo "El coste es $coste"
