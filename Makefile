PYTHON := python3
MAIN   := ./src/main.py
VFS    := ./vfs/example.json
LOG    := ./tests/logs
SCRIPT := ./tests

.PHONY: all run vfs log script all-args log-script-fail script-fail script-ok clean

all: run

run:
	$(PYTHON) $(MAIN)

vfs:
	$(PYTHON) $(MAIN) --vfs-path $(VFS)

log:
	$(PYTHON) $(MAIN) --log-file $(LOG)/log_only.csv

script:
	$(PYTHON) $(MAIN) --script $(SCRIPT)/ok.txt

all-args:
	$(PYTHON) $(MAIN) --vfs-path $(VFS) --log-file $(LOG)/all.csv --script $(SCRIPT)/ok.txt

log-script-fail:
	$(PYTHON) $(MAIN) --log-file $(LOG)/fail.csv --script $(SCRIPT)/fail.txt

script-fail:
	$(PYTHON) $(MAIN) --log-file $(LOG)/fail.csv --script $(SCRIPT)/no_such_script.txt

script-ok:
    $(PYTHON) $(MAIN) --log-file $(LOG)/new_dir/log.csv --script $(SCRIPT)/ok.txt

clean:
	rm -rf logs