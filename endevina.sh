#!/bin/bash

NUMERO=$((RANDOM % 100 + 1))
INTENTS=5
ENCERTAT=0

while [ $INTENTS -gt 0 ]; do
    read -p "Escriu un nombre de l'1 al 100: " RESPOSTA

    if [ "$RESPOSTA" -eq "$NUMERO" ]; then
        echo "Has encertat! El nombre era $NUMERO."
        ENCERTAT=1
        break
    elif [ "$RESPOSTA" -lt "$NUMERO" ]; then
        INTENTS=$((INTENTS - 1))
        if [ $INTENTS -gt 0 ]; then
            echo "El nombre és més gran. Et queden $INTENTS intents."
        fi
    else
        INTENTS=$((INTENTS - 1))
        if [ $INTENTS -gt 0 ]; then
            echo "El nombre és més petit. Et queden $INTENTS intents."
        fi
    fi
done

if [ $ENCERTAT -eq 0 ]; then
    echo "No has encertat. El nombre era $NUMERO."
fi