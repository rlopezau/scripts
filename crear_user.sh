#!/bin/bash
function usage(){
    echo "Usage ${0}"
    echo
    echo "Has de ser root"
    echo "L'usuari no es pot repetir"
    exit 1
}


if [[ ${UID} -ne 0 ]]
then
    usage
fi

read -p "Introdueix el nom d'usuari: " USER_NAME

echo "Creant l'usuari ${USER_NAME}"