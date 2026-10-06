PYTHON := python3
MAIN   := ./src/main.py
VFS    := ./tests
LOG    := ./tests/logs
SCRIPT := ./tests

.PHONY: all run vfs_minimal vfs_multi vfs_deep vfs_nesushestvuet clean

all: run

run:
	$(PYTHON) $(MAIN)

vfs_minimal:
	$(PYTHON) $(MAIN) --vfs-path $(VFS)/vfs_minimal.json --log-file $(LOG)/minimal.csv --script $(SCRIPT)/ok.txt

vfs_multi:
	$(PYTHON) $(MAIN) --vfs-path $(VFS)/vfs_multi.json --log-file $(LOG)/multi.csv --script $(SCRIPT)/ok.txt

vfs_deep:
	$(PYTHON) $(MAIN) --vfs-path $(VFS)/vfs_deep.json --log-file $(LOG)/deep.csv --script $(SCRIPT)/ok.txt

vfs_nesushestvuet:
	$(PYTHON) $(MAIN) --vfs-path $(VFS)/vfs_nesushestvuet.json --log-file $(LOG)/fail.csv --script .$(SCRIPT)/ok.txt

clean:
	rm -rf logs