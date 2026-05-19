#!/bin/bash

# Comprovar nombre de paràmetres
if [ $# -ne 2 ]; then
    echo "Us: nom i grup"
    exit 1
fi

USUARI=$1
GRUP=$2

if [ "$EUID" -ne 0 ]; then
    echo "Error: has de ser root"
    exit 1
fi

useradd -m -g $GRUP $USUARI

if [ $? -ne 0 ]; then
    echo "Error creant l'usuari"
    exit 1
fi

PASSWORD=$(date +%s%N | sha256sum | head -c10 )

echo "${USUARI}:${PASSWORD}" | chpasswd

passwd -e "$USUARI" > /dev/null 2>&1

echo "Usuari $USUARI creat correctament"
echo "Usuari: $USUARI"
echo "Grup: $GRUP"
echo "Home: /home/$USUARI"
echo "Password generat: $PASSWORD"