#!/bin/bash

suma=0
num=1
cont=0

while [ $num != 0 ]
do
  read -p "Introduce número: " num
  if [ $num != 0 ]
  then
  suma=$((suma+num))
  cont=$((cont+1))
  fi
done

media=$((suma/cont))
echo "La suma de los números es: $suma"
echo "La media es $media"
