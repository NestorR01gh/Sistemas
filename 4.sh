#!/bin/bash

let pares=0
let impares=0

echo "PARES"
for i in $(cat numeros.txt)
do
	let resto=$i%2
	if [ $resto -eq 0 ]
	then
		echo $i
		pares=$((pares+1))
	fi
done

echo "IMPARES"
for i in $(cat numeros.txt)
do
	let resto=$i%2
	if [ $resto -ne 0 ]
	then
		echo $i
		impares=$((impares+1))
	fi
done
echo "Hay $pares números pares y $impares número impares"
