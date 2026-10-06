PYTHON := python3
MAIN   := ./src/main.py
VFS    := ./tests
LOG    := ./tests/logs
SCRIPT := ./tests

.PHONY: all run vfs_minimal vfs_multi vfs_deep clean

all: run

run:
	$(PYTHON) $(MAIN)

vfs_minimal:
	$(PYTHON) $(MAIN) --vfs-path $(VFS)/vfs_minimal.json --log-file $(LOG)/minimal.csv --script $(SCRIPT)/minimal.txt

vfs_multi:
	$(PYTHON) $(MAIN) --vfs-path $(VFS)/vfs_multi.json --log-file $(LOG)/multi.csv --script $(SCRIPT)/fail.txt

vfs_deep:
	$(PYTHON) $(MAIN) --vfs-path $(VFS)/vfs_deep.json --log-file $(LOG)/deep.csv --script $(SCRIPT)/ok.txt

clean:
	rm -rf logs