#!/bin/bash
# Napisać skrypt,
# który obliczy n-tą liczbę Fibonacciego - rekurencyjnie.

Fibonacci_recursion() {
  if [ "$1" == 0 ]; then
    wynik=0
  elif [ "$1" == 1 ]; then
    wynik=1
  else
    number_2=$1-2
    number_1=$1-1
    wynik=$(`Fibonacci_recursion $number_2` + `Fibonacci_recursion $number_1`)
  fi
 }
Fibonacci_recursion "$1"
echo $wynik