#!/bin/bash

N=$1
if [ $N -gt 25 ]; then
    echo "No es pot fer el factorial de valors majors a 25"
    exit 1
fi

FACTORIAL=1

while [ $N -gt 0 ]; do
    FACTORIAL=$((FACTORIAL*N))
    N=$((N-1))
done
echo "El factorial de ${1} és ${FACTORIAL}"