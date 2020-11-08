#!/bin/bash
# Napisać skrypt, który sprawdza, czy ma 2-gi i n-ty parametr
# i wypisuje stosowną informację.
# Wartość n ma być podana z klawiatury.
# Jeżeli n=2 to to wyświetlany komunikat ma zostać wyświetlony tylko raz.

echo -n "Podaj numer argumentu. "
read n
if [[ $2 -ne 0 ]]; then
  echo "Drugi parametr istnieje."
else
  echo "Drugi parametr nie istnieje."
fi
if [[ $n -ne 0 ]]; then
  if [ -z $9 ]; then
    echo "Parametr $n istnieje."
  fi
fi
