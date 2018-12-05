#!/bin/bash
for x in $(cat "sizes")
do
	node size.js $x > stub
	(echo -e "module.exports = \`" && cat stub && echo -e "\`;") > stub.js
	sum=0
	for((i=0;i<5;i++))
	do
		temp=$(./tester1.sh $1)
		sum=$(($sum+$temp))	
	done
	sum=$(($sum/5))
	echo "$x; $sum"
done
