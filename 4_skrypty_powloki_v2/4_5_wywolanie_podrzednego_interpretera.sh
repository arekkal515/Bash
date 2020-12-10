###
(for k in *.txt; do wc -c "$k"; done) | sort -n

# nawiasy powoduja uruchomienie nowego interpretera polecen
# na stdin programu sort podawany jest wynik instrukcji for
# wynikiem instrukcji jest lista rozmiarow plikow z rozszerzeniem txt
# posortowana rosnaco (w porzadku numerycznym)


###
# ps - wyswietla informacje o uruchomionych procesach
# ps -u user

##
# ps > a; ls | wc -l
# zapisujemy wyniki ps do pliku a
# nastepnie uruchamiany jest potok czyli ls
# przekzuje on swoje wyniki do polecenia wc, ktore je liczy
# nastepnie wyswietlana jest zawartosc pliku a

# (ps > a; ls) | wc -l
# dziala podobnie, ale sa dodatkowe dwie powloki shell
