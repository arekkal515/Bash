silnia () {
  if [ $1 == 0 ] ; then
    echo 1
  else
    echo $[$1 * `silnia $[$1 - 1]`]
  fi
}

silnia 6