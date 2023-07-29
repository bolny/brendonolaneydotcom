tgt_dir := ../../www/blog
blog_template := ./template.html
base_template := ../template.html

built_pages := $(addsuffix .html,$(basename $(wildcard *.md)))
pages := $(foreach built_page,$(built_pages),$(tgt_dir)/$(built_page))

all: $(tgt_dir)/ $(tgt_dir)/index.html $(tgt_dir)/rss.xml $(pages)

clean:
	rm -rf $(tgt_dir)
	rm -f ./index.md
	rm -f ./rss.xml

$(tgt_dir)/:
	mkdir -p $(tgt_dir)

rss.xml:
	./mkrss

index.md:
	./mkindex

$(tgt_dir)/rss.xml: rss.xml
	mv ./rss.xml $(tgt_dir)/rss.xml

$(tgt_dir)/index.html: index.md
	pandoc --template=$(base_template) -o $(tgt_dir)/index.html index.md

$(tgt_dir)/%.html:
	pandoc --template=$(blog_template) -o $(tgt_dir)/$*.html $*.md
