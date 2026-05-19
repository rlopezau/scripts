#!/bin/bash

source $HOME/.telegram_bot/config

if [[ $1 -eq 1 ]]; then
    MENSAJE1=" ¡Hola! Has puesto un 1"
    URL="https://api.telegram.org/bot$TOKEN/sendMessage"
    curl -s -X POST $URL -d chat_id="$ID" -d text="$MENSAJE1" > /dev/null 2>&1  && echo " Mensaje enviado a Telegram."
elif [[ $1 -eq 2 ]]; then
    MENSAJE2=" !Hola! Has puesto un 2"
    URL="https://api.telegram.org/bot$TOKEN/sendMessage"
    curl -s -X POST $URL -d chat_id="$ID" -d text="$MENSAJE2" > /dev/null 2>&1  && echo " Mensaje enviado a Telegram."
fi