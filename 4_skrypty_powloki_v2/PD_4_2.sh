#!/bin/bash
# Napisać skrypt,
# który obliczy n-tą liczbę Fibonacciego - rekurencyjnie.

Fibonacci_recursion() {
  if [ $1 == 0 ]; then
    wynik=0
  elif [ $1 == 1 ]; then
    wynik=1
  else
    echo $((Fibonacci_recursion $(($1 - 2)) + Fibonacci_recursion "$(($1 - 1))"))
  fi
}

Fibonacci_recursion $1