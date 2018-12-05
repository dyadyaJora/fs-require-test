#!/bin/bash
echo "== TEST 1 RUNNING =="
(echo -e "size; fs\n" && ./loop1.sh fs-test.js) > fs1.csv
(echo -e "size; require\n" && ./loop1.sh require-test.js) > require1.csv
echo "== TEST 1 COMPLETE =="
echo "results in 'fs1.csv' and in 'require1.csv'"