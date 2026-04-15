#!/bin/bash

if [[ ${UID} -ne 0 ]]
then
    echo "Usage ${UID}"
    echo
    echo "Has de ser root"
    exit 1
fi

read -p "Introdueix el nom d'usuari: " USER_NAME

echo "Creant l'usuari ${USER_NAME}"