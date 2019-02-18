#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

## On met le paramètre d'appel $1 dans la variable pour l'appeler dans la fonction
numero_test=$1

## On crée la fonction qui va faire un modulo
function nombre_modulo {
  #  [[ $(($numero_test % $1)) == 0 ]] or (( $numero_test % $1 == 0 )) also works.
  if [[ `expr $numero_test % $1` == 0 ]]; then
    return 0
  else
    # On renvoie vrai quand ce n'est pas modulo 1.
    return 1
  fi
}
list=""

# Si la fonction nombre_modulo renvoie vrai, on rajoute dans la liste le mot Pling
nombre_modulo 3 && list+=Pling

# Si la fonction nombre_modulo renvoie vrai, on rajoute dans la liste le mot Plang
nombre_modulo 5 && list+=Plang

# Si la fonction nombre_modulo renvoie vrai, on rajoute dans la liste le mot Plong
nombre_modulo 7 && list+=Plong

# Si la variable est vide (-z), c-à-d que ce n'est pas modulo 1,3,5 ou 7, on ajoute la valeur du paramètre dans la liste.
[[ -z $list ]] && list+=$numero_test

# On affiche le résultat. S'il y a une erreur on affiche le message d'erreur
echo ${list:?message}
