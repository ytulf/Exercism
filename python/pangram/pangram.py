#!/usr/bin/env python3

def is_pangram(sentence):
   alphabet = "abcdefghijklmnopqrstuvwxyz"
   return not (set(alphabet) - set(str.lower(sentence)))

