poczatek=(ładny "bardzo ładny" śliczny piękny)
koniec=("wystrój łazienki" "widok z okna" "dywan" "widok z klatki schodowej" "dojazd" "trawnik")
i=$[$RANDOM%${#poczatek[@]}]
j=$[$RANDOM%${#koniec[@]}]
echo "${poczatek[$i]} ${koniec[$j]}"