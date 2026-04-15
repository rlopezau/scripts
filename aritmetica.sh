#!/bin/bash

read -p "Valor de la variable X: " X
read -p "Valor de la variable Y: " Y

echo "Has introduït ${X} i ${Y}"
SUMA=$((X+Y))
echo "${X}+${Y}=${SUMA}"
RESTA=$((X-Y))
echo "${X}-${Y}=${RESTA}"
PRODUCTE=$((X*Y))
echo "${X}*${Y}=${PRODUCTE}"
DIVISIO=$(echo "scale=2; ${X}/${Y}" | bc)
echo "${X}*${Y}=${DIVISIO}"