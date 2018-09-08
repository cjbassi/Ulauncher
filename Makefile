# To pass args, run `make ARGS='...'`

.PHONY: default run run-dev install build

default: run

run:
	./bin/ulauncher $(ARGS)

run-dev:
	./bin/ulauncher -v --dev $(ARGS)

install: build
	./install.sh

build:
	./build-utils/build-preferences.sh

test:
	./test.sh $(ARGS)
