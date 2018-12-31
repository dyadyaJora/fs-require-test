#!/bin/bash

timestamp() {
  date +"%s%N"
}

t1=$(timestamp)

if [[ $1 == "import-test.mjs" ]]
then 
  node --experimental-modules ./$1 > /dev/null 2>/dev/null
else 
  node ./$1 > /dev/null
fi

t2=$(timestamp)

echo $((($t2-$t1)/1000000))
