#!/bin/bash
for x in $(cat "sizes")
do
	node size.js $x > tested-scripts/stub
	(echo -e "module.exports = \`" && cat tested-scripts/stub && echo -e "\`;") > tested-scripts/stub.js
	(echo -e -n "{\"str\":\"" && cat tested-scripts/stub | tr -d "\n" && echo -e -n "\"}") > tested-scripts/stub.json
	sum=0
	for((i=0;i<5;i++))
	do
		temp=$(./tester1.sh $1)
		sum=$(($sum+$temp))	
	done
	sum=$(($sum/5))
	echo "$x; $sum"
done
