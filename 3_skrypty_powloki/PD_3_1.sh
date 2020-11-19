#!/bin/bash
# Napisać skrypt, który sprawdza, czy ma 2-gi i n-ty parametr
# i wypisuje stosowną informację.
# Wartość n ma być podana z klawiatury.
# Jeżeli n=2 to to wyświetlany komunikat ma zostać wyświetlony tylko raz.

echo -n "Podaj numer argumentu. "
read n
if [[ -z $2 ]]; then
  echo "Drugi parametr nie istnieje."
else
  echo "Drugi parametr istnieje."
fi
if [[ -z $n ]]; then
  echo "Parametr $n nie istnieje."
else
  echo "Parametr $n istnieje."
fi
