#!/bin/bash
read -p "Introdueix X: " X

if [[ ${X} -eq 5 ]]
then
    echo "Has introduït un 5"
else
    echo "No has introduït un 5"
fi