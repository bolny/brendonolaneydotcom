tgt_dir := ../../www/blog
html_template := ./template.html
base_template := ../template.html

static := $(addsuffix .html,$(basename $(wildcard *.md)))

all: index.html rss.xml $(static)

clean:
	rm -f $(tgt_dir)/*
	rm -f index.md
	rm -f rss.xml

rss.xml:
	./mkrss
	cp ./rss.xml $(tgt_dir)/rss.xml

index.md:
	./mkindex

index.html: index.md
	pandoc --template=$(base_template) -o $(tgt_dir)/index.html index.md

%.html:
	pandoc --template=$(html_template) -o $(tgt_dir)/$*.html $*.md
