#!/bin/bash

NUMERO=$((RANDOM % 100+1))
INTENTS=5

while [ ${INTENTS} -gt 0 ]; do
    read -p "Escriu un nombre entre l'1 i el 100: " RESPOSTA
    if [ ${RESPOSTA} -eq ${NUMERO} ]; then
        echo "Has acertat! El numero era ${RESPOSTA}"
    fi

    if [ ${RESPOSTA} -lt ${NUMERO} ]; then
        echo "Incorrect, el numero és major que ${RESPOSTA}, et queden $((INTENTS-1)) intents"
    else
        echo "Incorrect, el numero és menor que ${RESPOSTA}, et queden $((INTENTS-1)) intents"
    fi
done
