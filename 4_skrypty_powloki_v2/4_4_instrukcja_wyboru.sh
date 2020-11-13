### instrukcja wyboru

case $1 in
  ?) echo $1 ma jeden znak;;
 ??) echo $1 ma dwa znaki;;
???) echo $1 ma trzy znaki;;
  *) echo $1 ma wiecej niz trzy znaki;;
esac

### mozna tez robic warunki bez ifa i case
# na przyklad
# cp a c/b && rm a && mv c/b