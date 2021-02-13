#!/bin/bash

# pobieramy nazwy plikow
ZMIENNA=''

for k in $@; do
  if [[ -r $k ]] || [[ -d $k ]]; then
    ZMIENNA+=$k
  else
    :
  fi
done

# tworzymy nowy plik

if [ -f "$k" ]; then
  :
else
  touch $ZMIENNA
fi


# pobieramy zawartosc plikow

for k in $@; do
  if [[ -d $k ]]; then
    :
  else
    cat $k >> $ZMIENNA
  fi
done


for k in $@; do
  if [[ -d $k ]]; then
    cp $ZMIENNA $k/$ZMIENNA
  fi
done



