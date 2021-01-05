#!/bin/bash

read -p "Introduce opción: " opcion

if [ $opcion -eq 1 ]
then
	./operacion1.sh
elif [ $opcion -eq 2 ]
then
	./operacion2.sh
elif [ $opcion -eq 3 ]
then
	./operacion3.sh
elif [ $opcion -eq 4 ]
then
	./operacion4.sh
fi