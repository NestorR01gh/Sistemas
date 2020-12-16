#!/bin/bash

NOTAVALIDA="false";

while [ $NOTAVALIDA = "false" ]
do
read -p "Introduce nota: " nota
if [ $nota -ge 0 ] && [ $nota -le 10 ]
then
NOTAVALIDA="true"
if [ $nota -lt 5 ]
then
echo "Estás suspendido"
elif [ $nota -ge 5 ] && [ $nota -lt 6 ]
then
echo "Tienes un suficiente"
elif [ $nota -ge 6 ] && [ $nota -lt 7 ]
then
echo "Tienes un bien"
elif [ $nota -ge 7 ] && [ $nota -lt 9 ]
then
echo "Tienes un notable"
else
echo "Tienes un sobresaliente"
fi
NOTAVALIDA="true";
else
echo "Introduce una nota del 1 al 10"
fi
done
