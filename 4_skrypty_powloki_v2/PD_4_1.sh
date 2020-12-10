#!/bin/bash
# Napisać skrypt, który wszystkie pliki z przyrostkiem ~ (np. plik.txt~),
# skopiuje (jeżeli takie są) do katalogu BACKUP w bieżącym katalogu.
# Jeżeli katalog BACKUP nie istnieje, skrypt powinien go założyć.
# Jeżeli jest już plik (lub inny nie-katalog) o nazwie BACKUP,
# skrypt powinien zgłosić błąd.

# cp - kopiowanie plikow do folderu

#mkdir BACKUP;
#for k in *~; do cp "$k" BACKUP; done

FILE='BACKUP'
if [ -e "$FILE" ]; then
  echo "Plik lub katalog BACKUP istnieje"
else
  mkdir BACKUP;
  for k in *~; do cp "$k" BACKUP; done
fi