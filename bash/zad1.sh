#!/bin/bash

read liczba
n=2
while ((n<=liczba)): do
  q=0
  dol=sqrt($n)
  p=2
  while ((p<=dol): do
    if ((dol%p==0)): then
      q=1
    fi
    p+=1
    done
  if ((q==0)): then
    echo "$n"
  n+=1
done
