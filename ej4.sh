#!/bin/bash
echo
numValido="false"

while [ $numValido == "false" ]
do
  read -p "Introduce número: " num
  if [ $num -gt 0 ]
  then
    for i in `seq 0 $num`; do
    echo "$i"
    done
    numValido="true"
  else
    echo "Introduce un número mayor que 0"
  fi
done
