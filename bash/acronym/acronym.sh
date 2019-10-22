#!/usr/bin/env bash

main () {
    # Initialisation de la variable
    local acronym=""
    # Regex sur l'input
    local input=${1//[^a-zA-Z\']/ }
    # On met le résultat de la regex dans une variable qui sera splité
    local words=( $input )
    for w in "${words[@]}"; do
        acronym+="${w:0:1}"
    done
    # On affiche en majuscule
    echo "${acronym^^}"
}

main "$1"
