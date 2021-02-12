#!/bin/bash
# Wykorzystujac poznane metody
# napisz program,
# w ktorym jeden proces wytwarza 32 procesy potomne.
# Wykorzystujac polecenie pstree, przedstaw drzewo tych procesow.

process() {
  k=$$
}

i=0
while [ $i -lt 32 ];
  do
    process &
    i=$[i+1]
  done

pstree -p $k