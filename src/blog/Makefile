tgt_dir := ../../www/blog
html_template := ./template.html

static := $(addsuffix .html,$(basename $(wildcard *.md)))

all: index.html $(static)

clean:
	rm -f $(tgt_dir)/*
	rm -f index.md

index.md:
	./mkindex

index.html: index.md
	pandoc --template=$(html_template) -o $(tgt_dir)/index.html index.md

%.html:
	pandoc --template=$(html_template) -o $(tgt_dir)/$*.html $*.md
