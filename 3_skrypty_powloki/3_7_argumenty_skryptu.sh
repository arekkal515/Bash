##### argumenty skryptu

### czytanie standardowego wejscia
# read - odczytuje po kolei slowa z linii i przypisuje do zmiennych
bash$ read a b c
Ala ma kota, pisza na plotach
bash$ echo $a
Ala
bash$ echo $c
kota, pisza na plotach

### argumenty
# $0 - nazwa, za ktorej pomoca wywolano skrypt
# $1 - pierwszy argument
# $# - liczba argumentow skryptu
# $@ - wszystkie argumenty skryptu

# shift - przesuniecie argumentow o jeden w tyl
# shift -n - n-krotne wykonanie shift