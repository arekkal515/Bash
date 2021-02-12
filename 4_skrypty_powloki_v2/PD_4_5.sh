#!/bin/bash
# Napisać skrypt rozwiązujący zadanie 4
# dla wielu plików podanych jako argumenty.
# Wykorzystaj podprogramy.

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

for i in "$@"
do
  echo $i ": "
  summary_script $i
  echo
done