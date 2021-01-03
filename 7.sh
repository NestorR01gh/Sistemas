#!/bin/bash

if [ -d $1 ]
then
	echo `./6.sh $1`
else
	echo "No existe el directorio $1"
fi