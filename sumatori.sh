#!/bin/bash

if [[ $# -ne 1 ]]
then
    echo "Error: se requiere un único parámetro"
    exit 1
fi

if ! [[ "$1" =~ ^[0-9]+$ ]]; then
    echo "Error: se requiere un número entero positivo"
    exit 1
fi

echo "Vamos a calcular el sumatorio de $1"

n=$1
suma=0

for (( i=1;i<=n;i++ ))
do
    echo "i: $i n: $n"
    suma=$((suma+i))
done

echo "El sumatorio de $n vale $suma"

exit 0