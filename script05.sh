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

PASSWORD=$(date +%s%N | sha256sum | head -c8 )

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

echo "Usuari creat: ${USER_NAME}"
echo "Contrasenya generada: ${PASSWORD}"
echo "HostName: ${HOSTNAME}"

exit 0