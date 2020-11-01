#!/bin/bash

if test $# -eq 2; then
              echo $1$2
else
              echo "usage: $0 text1 text2"
              exit 1
    fi

