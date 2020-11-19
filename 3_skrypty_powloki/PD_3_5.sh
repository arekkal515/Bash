# Napisać skrypt, które posortuje i wyświetli zawartość pliku zawierającego liczby
# - po jednej liczbie w linii. Dodatkowo chcielibyśmy wiedzieć ile jest unikalnych
# liczb, oraz ile wszystkich, oraz ile takich które się powtarzają.

# w zalozeniu, ze kazda liczba jest w nowej linii

sort -g -o $1 $1
cat $1
unikat=$(sort -u $1 | wc -w)
ile_liczb=$(wc -w < $1)
ile_duplikatow=$(sort $1 | uniq -d | wc -w)
echo "Znajduje się $unikat unikatowych liczb."
echo "Znajduje się $ile_liczb wszystkich liczb."
echo "Znajduje się $ile_duplikatow duplikatow"