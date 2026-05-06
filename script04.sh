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

read -p "Introdueix el nom complet: " COMMENTS

read -p "Introdueix el nom d'usuari: " USER_NAME

read -p "Introdueix la contrasenya: " PASSWORD

useradd -m -c "${COMMENTS}" ${USER_NAME} &> /dev/null

if [[ ${?} -ne 0 ]]
then
    echo "Errada creant l'usuari"
    exit 1
fi

echo "${USER_NAME}:${PASSWORD}" | chpasswd

if [[ ${?} -ne 0 ]]
then
    echo "Errada canviant la contrasenya"
    exit 1
fi

passwd -e ${USER_NAME}

exit 0