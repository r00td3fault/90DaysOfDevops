#!/bin/bash

if [ -f $1 ]; then
	countFinded=$(grep -c "$2" $1)
	if [ $countFinded -gt 0 ]; then
		echo "¡Encontrado!"
	else
		echo "No encontrado."
	fi
else
	echo "El archivo no existe"
fi
