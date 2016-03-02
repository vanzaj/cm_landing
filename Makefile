NP := ./node_modules/.bin
BUILD := ./build

help:
	@echo 'make clean | css | html'

clean:
	/bin/rm -f $(BUILD)/img/*
	/bin/rmdir $(BUILD)/img
	/bin/rm -f $(BUILD)/*

build_dir:
	mkdir -p $(BUILD)
	mkdir -p $(BUILD)/img

css: build_dir
	$(NP)/stylus -u autoprefixer-stylus ./styl/cm_main.styl -o $(BUILD)
	$(NP)/cssmin $(BUILD)/cm_main.css > $(BUILD)/cm_main.min.css

html: css
	$(NP)/jade -o $(BUILD) -P ./jade/index.jade
	cp ./img/* $(BUILD)/img

classmentors:

.PHONY: help
