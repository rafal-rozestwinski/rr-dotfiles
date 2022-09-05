all: run

.PHONY: clean
clean:
	rm -rf ./build ./dist ./bin/

.PHONY: deepclean
deepclean: clean
	rm -rf node_modules

node_modules/typescript/bin/tsc:
	npm install typescript

.PHONY: compile
compile: node_modules/typescript/bin/tsc
	@echo "TypeScript compile..."
	node node_modules/typescript/bin/tsc

.PHONY: run
run: build
	node dist/index.js

node_modules/javascript-obfuscator/bin/javascript-obfuscator:
	npm install javascript-obfuscator

.PHONY: obfuscate
obfuscate: node_modules/javascript-obfuscator/bin/javascript-obfuscator
	node node_modules/javascript-obfuscator/bin/javascript-obfuscator ./dist --output ./dist --exclude static --ignore-imports true
	cd dist && rm -f *.map *.ts *.d.ts

.PHONY: npminstall
npminstall:
	npm install

.PHONY: build
build: npminstall compile
	@echo "Build OK"

.PHONY: dist
dist: build obfuscate
	@echo "Dist OK"
