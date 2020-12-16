#!/bin/bash
echo
read -p "Dime el numero 1: " numero1
read -p "Dime el numero 2: " numero2

if [ $numero1 -lt $numero2 ]
then
  echo "El número $numero2 es mayor que el número $numero1"
else
  echo "El número $numero1 es mayor que el número $numero2"
fi
