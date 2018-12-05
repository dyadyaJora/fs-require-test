#!/bin/bash

timestamp() {
  date +"%s%N"
}

t1=$(timestamp)

node ./$1 > /dev/null

t2=$(timestamp)

echo $((($t2-$t1)/1000000))
