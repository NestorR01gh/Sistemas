#!/bin/bash

cant=`ls $1/*.txt | wc -w`
rm $1/*.txt
echo "Se han borrado $cant ficheros txt"