#!/usr/bin/env bash
set -euo pipefail

python3 ./src/main.py

python3 ./src/main.py --vfs-path ./tests/vfs_minimal.json --log-file ./tests/logs/minimal.csv --script ./tests/ok.txt

python3 ./src/main.py --vfs-path ./tests/vfs_multi.json --log-file ./tests/logs/multi.csv --script ./tests/ok.txt

python3 ./src/main.py --vfs-path ./tests/vfs_deep.json --log-file ./tests/logs/deep.csv --script ./tests/ok.txt

python3 ./src/main.py --vfs-path ./tests/vfs_nesushestvuet.json --log-file ./tests/logs/fail.csv --script ./tests/ok.txt