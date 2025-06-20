#!/bin/bash

let resultado=$1*$2
echo "el resultado de multiplicar $1 * $2 es: $resultado"

read -p "ingrea un numero " NUM

for i in {1..10}; do
	echo "$NUM * $i = $(($i*$NUM))"
done

