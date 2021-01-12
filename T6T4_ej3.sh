#!/bin/bash

read -p "Introduce número: " num
fact=1
for i in `seq 1 $num`
do
	fact=$((fact*i))
done
echo "El factorial es $fact"
