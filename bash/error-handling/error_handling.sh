#!/usr/bin/env bash

set -o errexit
set -o nounset

main() {
    # On initialise la variable locale 'name', soit par le premier paramètre soit par une valeur standard
    local name="${1-first_argument}"
    # Test avec (()) car c'est une comparaison arithmétique
    if (($# != 1 )) ; then
	     # Si rien n'est affiché, on affiche l'aide
        printf "Usage: ./error_handling <greetee>\n"
        return 1
    fi
    # Si pas de problème, on affiche le nom
    printf "Hello, %s\n" "${name}"
}

main "$@"
