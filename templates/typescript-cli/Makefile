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
	#node node_modules/javascript-obfuscator/dist/index.cli.js ./dist --output ./dist --exclude static --ignore-imports true
	cd dist && rm -f *.map *.ts *.d.ts

.PHONY: npminstall
npminstall:
	npm install

.PHONY: build
build: npminstall compile
	@echo "Build OK"

.PHONY: dist
dist: clean build obfuscate
	@echo "Dist OK"

# npm install --save-dev eslint @typescript-eslint/parser @typescript-eslint/eslint-plugin
# npx tslint-to-eslint-config
.PHONY: lint
lint:
	npm run lint

.PHONY: lint-fix
lint-fix:
	npm run lint-fix