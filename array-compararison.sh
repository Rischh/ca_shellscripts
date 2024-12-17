#!/bin/zsh

a=(3 5 8 10 6)
b=(6 5 4 12)
c=(14 7 5 7)

for n in ${a[@]} ; do
   for n2 in ${b[@]} ; do
     if [ $n -eq $n2 ] ; then
        for n3 in ${c[@]} ; do
          if [ $n2 -eq $n3 ] ; then 
           echo $n3
          fi
        done 
     fi
   done 
done 
