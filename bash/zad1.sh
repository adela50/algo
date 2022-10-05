#!/bin/bash

pierwsza() {
  local n=$1
  for((i=2; i<=$n/2; i++))
  do
    odp=$(( n%i ))
    if [ $odp -eq 0 ]
    then
      return
    fi
  done
  echo "$n "
}

read liczba
wyniki='';
for((j=2; j<=$liczba; j++))
do
  wyniki+=$(pierwsza $j)
done

echo "$wyniki"
