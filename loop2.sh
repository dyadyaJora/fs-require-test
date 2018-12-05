#!/bin/bash
for x in $(cat "sizes")
do
	node size.js $x > stub
	(echo -e "module.exports = \`" && cat stub && echo -e "\`;") > stub.js
	echo "$x; $(node $1)"
done
