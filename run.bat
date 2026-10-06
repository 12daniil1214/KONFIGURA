echo off
python .\src\main.py

python .\src\main.py --vfs-path vfs\example.json

python .\src\main.py --log-file logs\log_only.csv

python .\src\main.py --script .\tests\ok.txt

python .\src\main.py --vfs-path vfs\example.json --log-file logs\all.csv --script .\tests\ok.txt

python .\src\main.py --log-file logs\fail.csv --script .\tests\fail.txt

python .\src\main.py --script .\tests\no_such_script.txt

python .\src\main.py --log-file logs\new_dir\log.csv --script .\tests\ok.txt