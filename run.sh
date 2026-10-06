#!/usr/bin/env bash
set -euo pipefail

python3 ./src/main.py

python3 ./src/main.py --vfs-path vfs/example.json

python3 ./src/main.py --log-file logs/log_only.csv

python3 ./src/main.py --script ./tests/ok.txt

python3 ./src/main.py --vfs-path vfs/example.json \
    --log-file logs/all.csv \
    --script ./tests/ok.txt

python3 ./src/main.py --log-file logs/fail.csv \
    --script ./tests/fail.txt

python3 ./src/main.py --script ./tests/no_such_script.txt

python3 ./src/main.py --log-file logs/new_dir/log.csv \
    --script ./tests/ok.txt