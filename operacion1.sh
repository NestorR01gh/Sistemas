#!/bin/bash
read -p "Introduce nombre de ususario: " nomUsu
usuarios=`cat usuarios.txt | awk '{print $1}'`
cont=0
for i in $usuarios
do
	if [ $i = $nomUsu ]
	then
	cont=$((cont+1))
	fi
done
if [ $cont -eq 0 ]
then
	echo "No se ha logueado"
else
	echo "El usuario $nomUsu se ha conectado $cont veces"
fi