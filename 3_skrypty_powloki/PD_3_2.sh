#!/bin/bash
# Napisac skrypt, ktory znajdzie w biezacym katalogu
# wszystkie pliki, ktore zawieraja w swojej tresci
# swoja nazwe.

zmienna=$(find * -maxdepth 1 -type f)
for i in $zmienna; do
 grep -l $i $i
done