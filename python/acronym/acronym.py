#!/usr/bin/env python3

# On importe la librairie pour faire une regex
import re

def abbreviate(words):
    # On enlève tout ce qui n'est pas utile (espace, deux point, virgule, ...) et on join `
    # le tout pour le retourner
    return "".join([element[0] for element in re.compile(r"[-,_ .:;]+").split(words.upper())])

# Test avec plusieurs éléments de la regex de marqué --> TRPV
# print (abbreviate("Test _Regex'S Po'ur voir"))
