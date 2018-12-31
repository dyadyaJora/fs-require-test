#!/bin/bash
echo "== TEST 1 RUNNING =="
(echo -e "size; fs\n" && ./loop1.sh tested-scripts/fs-test.js) > results/fs1.csv
(echo -e "size; require\n" && ./loop1.sh tested-scripts/require-test.js) > results/require1.csv
(echo -e "size; import\n" && ./loop1.sh tested-scripts/import-test.mjs) > results/import1.csv
(echo -e "size; json\n" && ./loop1.sh tested-scripts/json-test.js) > results/json1.csv
echo "== TEST 1 COMPLETE =="
echo "results in 'results/fs1.csv', 'results/require1.csv', 'results/import1.csv' and 'results/json1.csv'"
