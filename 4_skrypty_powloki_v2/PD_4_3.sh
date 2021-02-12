#!/bin/bash
#Napisać skrypt, który obliczy n-tą liczbę Fibonacciego - iteracyjnie.

Fibonacci_iteration()
  if [ $1 == 0 ]; then
    wynik=0
  elif [ $1 == 1 ]; then
    wynik=1
  else
    a=0
    b=1
    for (( i=0; i<$1; i++ ))
    do
      c=$(( a+b ))
      a=$b
      b=$c
    wynik=$c
    done
  fi

Fibonacci_iteration $1
echo $wynik