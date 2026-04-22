#!/bin/bash

if [ $# -eq 0 ]; then
    echo "has de posar al manco un paràmetre"
    exit 1
fi

SUMA=0

QUANTS=${#}

while [ ${#} -gt 0 ]; do
    SUMA=$((SUMA+${1}))
    shift

done

MITJANA=$((SUMA/QUANTS))
echo "La mitjana és ${MITJANA}"