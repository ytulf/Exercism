#!/usr/bin/env bash
if [ $# -ne 2 ]; then
  # Mauvais usage, on affiche l'usage de la fonction
    echo "Usage: hamming.sh <string1> <string2>"
    exit 1
elif [ ${#1} -ne ${#2} ]; then
  # Mauvais usage, on affiche une aide
    echo "left and right strands must be of equal length"
    exit 1
fi
# Initialise la variable
distance=0
# Boucle pour afficher la distance
for ((i=0; i<${#1}; i++)); do
    [ ${1:i:1} == ${2:i:1} ] || let "distance++"
done
# On afficeh la distance
echo "$distance"
