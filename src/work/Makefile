tgt_dir := ../../www/work
work_template := ./template.html
base_template := ../template.html

built_pages := $(addsuffix .html,$(basename $(wildcard *.md)))
pages := $(foreach built_page,$(built_pages),$(tgt_dir)/$(built_page))

all: $(tgt_dir)/ $(pages)

clean:
	rm -rf $(tgt_dir)/

$(tgt_dir)/:
	mkdir -p $(tgt_dir)

$(tgt_dir)/index.html:
	pandoc --template=$(base_template) -o $(tgt_dir)/index.html index.md

$(tgt_dir)/%.html:
	pandoc --template=$(work_template) -o $(tgt_dir)/$*.html $*.md
