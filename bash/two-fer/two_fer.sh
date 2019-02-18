#!/usr/bin/env bash

set -o errexit
set -o nounset

main() {
   printf "One for %s, one for me.\n" ${1-you}
}

main "$@"
