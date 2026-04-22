#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Has de posar un paràmetre com a mínim"
    exit 1
fi

MAXIM=${1}

while [ ${#} -gt 0 ]; do
    if [ $1 -gt $MAXIM ]; then
        MAXIM=${1}
    fi
    shift
done

echo "El màxim és ${MAXIM}"