lint:
	./bin/ameba

lint-fix:
	./bin/ameba --fix

build:
	crystal build src/main.cr

test:
	crystal spec
