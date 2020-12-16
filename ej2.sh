#!/bin/bash
echo
read -p "Dime un número: " numero
if [ $numero -gt 0 ]
then
  resto=$(($numero%2))
  if [ $resto -eq 0 ]
  then
  echo "El número $numero es par"
  else
  echo "El número $numero es impar"
  fi
else
  echo "El valor introducido no es correcto"
fi
