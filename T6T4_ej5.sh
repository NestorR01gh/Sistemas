#!/bin/bash

maxDinero=100
gasto=0
saldo=100

while [ $saldo -gt 0 ]
do
	read -p "Tiene usted $saldo€ de saldo. Introduzca importe de compra: " gasto
	if [ $gasto -le $saldo ]
	then
		saldo=$((saldo-gasto))
	else
		echo "No dispone de tanto saldo"
		break
	fi
done
gasto=$((100-saldo))
echo "Resumen de sus compras: Se gasta $saldo; le quedan $gasto€"
