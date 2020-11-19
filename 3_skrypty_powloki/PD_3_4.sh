#!/bin/bash
# Napisac skrypt, ktory posortuje
# leksykograficznie i wyswietli
# zawartosc pliku zawierajacego teksty.

# w zalozeniu, ze tekst to kazde nowe slowo

sort -t ' ' -o $1 $1
cat $1