#!/bin/bash

maxLin=`cat listado.txt | wc -l`
nLinea=1
uWin=0
uLin=0
pWin=0
pLin=0

while [ $nlinea -le $maxLin ]
do
	linea=`cat listado.txt | head -$nLinea | tail -1`
	usu=`echo $linea | awk '{print $1}'`
	so=`echo $linea | awk '{print $2}'`
	proc=`echo $linea | awk '{print $3}'`
	if [ $so = "Windows" ]
	then
		uWin=$((uWin+1))
		pWin=$((pWin+proc))
	fi
	if [ $so = "Linux" ]
	then
		uLin=$((uLin+1))
		pLin=$((pLin+proc))
	fi
	nLinea=$((nLinea+1))
done
echo -e "LINUX\n -$uLin usuarios\n -$pLin procesos\n\nWINDOWS\n -$uWin usuarios\n -$pWin procesos"
