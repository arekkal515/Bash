#!/bin/bash
# Napisac skrypt, ktory posortuje
# leksykograficznie i wyswietli
# zawartosc pliku zawierajacego teksty.

# w zalozeniu, ze tekst to kazde nowe slowo

touch temp.txt
sort -t ' ' $1 > temp.txt
mv temp.txt $1
cat $1