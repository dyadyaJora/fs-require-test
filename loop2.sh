#!/bin/bash
for x in $(cat "sizes")
do
	node size.js $x > tested-scripts/stub
	(echo -e "module.exports = \`" && cat tested-scripts/stub && echo -e "\`;") > tested-scripts/stub.js
	(echo -e -n "{\"str\":\"" && cat tested-scripts/stub | tr -d "\n" && echo -e -n "\"}") > tested-scripts/stub.json
	echo "$x; $(node $1)"
done
