#!/bin/bash
#Napisać skrypt, który wczyta plik
#zawierający liczby (po jednej w wierszu)
#i wypisze ich maksimum, minimum i sumę.
#Jeśli plik jest pusty, to wypisze
#odpowiedni komunikat.
#Nazwa pliku ma być podana
#jako parametr skryptu.

summary_script() {
  file=$1
  sum=0
  if [ -s "$file" ]; then
    echo 'Maksimum:' $(cat $file | sort -rn | head -n 1)
    echo 'Minimum:' $(cat $file | sort -n | head -n 1)
    echo 'Suma:' $(cat $file | paste -sd+ | bc)
  else
    echo "Plik $file jest pusty."
  fi
}

summary_script $1