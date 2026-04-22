#!/bin/bash

if [ $# -eq 0 ]; then
echo "Has de posar un paràmetre com a mínim"
    exit 1
fi

N=$1
FACTORIAL=1

while [ $N -gt 0 ]; do
    FACTORIAL=$((FACTORIAL*N))
    N=$((N-1))
done
echo "El factorial de ${1} és ${FACTORIAL}"