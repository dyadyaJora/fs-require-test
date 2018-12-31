#!/bin/bash
echo "== TEST 2 RUNNING =="
(echo -e "size; fs\n" && ./loop2.sh tested-scripts/fs-test.js) > results/fs2.csv
(echo -e "size; require\n" && ./loop2.sh tested-scripts/require-test.js) > results/require2.csv
(echo -e "size; json\n" && ./loop2.sh tested-scripts/json-test.js) > results/json2.csv
echo "== TEST 2 COMPLETE =="
echo "results in 'results/fs2.csv', 'results/require2.csv', 'results/json2'"
