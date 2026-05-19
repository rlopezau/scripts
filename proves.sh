#!/bin/bash

NUMERO=42
INTENTS=3
while [ $INTENTS -gt 0 ]; do
    read -p "Numero: " RESPOSTA
    if [ $RESPOSTA -eq $NUMERO ]; then
        echo "Encertat!"
        exit 0 
    fi
    INTENTS=$((INTENTS - 1))
    if [ $RESPOSTA -gt $NUMERO ]; then
        echo "El nombre és més petit. Et queden $INTENTS intents"
    else
        echo "El nombre és més gran. Et queden $INTENTS intents"
    fi
done
echo "Has perdut. Era $NUMERO"