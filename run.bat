echo off
python .\src\main.py

python .\src\main.py --vfs-path .\tests\vfs_minimal.json --log-file logs\minimal.csv --script .\tests\minimal.txt

python .\src\main.py --vfs-path .\tests\vfs_multi.json --log-file logs\multi.csv --script .\tests\fail.txt

python .\src\main.py --vfs-path .\tests\vfs_deep.json --log-file logs\deep.csv --script .\tests\ok.txt