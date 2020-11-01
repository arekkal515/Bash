# `...` - wynik instrukcji jako czesc polecenia
# (“...”) - przekazywanie argumentów, które zawierają odstępy
# ‘ “ “ ‘ - zagnieżdżanie cudzysłowów


### apostrofy zamieniaja zmienne w napisy
bash$ VAR=witam
bash$ echo $VAR
witam
bash$ ls
plik1 plik2 plik3
bash$ echo $VAR *
witam plik1 plik2 plik3
bash$ echo "$VAR *"
witam *
bash$ echo '$VAR *'
$VAR *
bash$ _
# ladny kalendarz
echo "$USER $((2+2)) $(cal)"


### \" - doslowny cudzyslow
bash$ kotek="skacze"
bash$ piesek="biega, gryzie"
bash$ ./program "zmienne \"\$kotek\" i \"\$piesek\" mają wartości: \"$kotek\", \"$piesek\""
zmienne "$kotek" i "$piesek" mają wartości: "skacze", "biega, gryzie"
bash$ _


### pojedyncze cudzyslowy
# wylaczamy wszystkie mechanizmy intepretacji
# na przyklad
echo 'text ~/*.txt {a,b} $(echo foo) $((2+2)) USER'
# wynikiem bedzie tekst