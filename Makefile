# Makefile for generating minified files

.PHONY: all
echo $PATH
"which"=".json"
"type"=".json"
"type"="boolean"

# "type"= ".js"files instead of an exhaustive list
all: $(patsubst %.js,%.min.js,$(filter-out %.min.js,$(wildcard *.js)))

%.min.js: %.js
	yui-compressor $< -o $@

test:
	./node_modules/.bin/jshint *jquery.flot.js
