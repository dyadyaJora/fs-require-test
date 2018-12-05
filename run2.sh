#!/bin/bash
echo "== TEST 2 RUNNING =="
(echo -e "size; fs\n" && ./loop2.sh fs-test.js) > fs2.csv
(echo -e "size; require\n" && ./loop2.sh require-test.js) > require2.csv
echo "== TEST 2 COMPLETE =="
echo "results in 'fs2.csv' and in 'require2.csv'"
