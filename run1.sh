#!/bin/bash
echo "== TEST 1 RUNNING =="
(echo -e "size; fs\n" && ./loop1.sh fs-test.js) > results/fs1.csv
(echo -e "size; require\n" && ./loop1.sh require-test.js) > results/require1.csv
(echo -e "size; import\n" && ./loop1.sh import-test.mjs) > results/import1.csv
(echo -e "size; json\n" && ./loop1.sh json-test.js) > results/json1.csv
echo "== TEST 1 COMPLETE =="
echo "results in 'fs1.csv' and in 'require1.csv'"
