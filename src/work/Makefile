tgt_dir := ../../www/work
html_template := ./template.html
base_template := ../template.html

static := $(tgt_dir)/ae.html \
	$(tgt_dir)/fd.html \
	$(tgt_dir)/index.html \
	$(tgt_dir)/ipr.html \
	$(tgt_dir)/loc.html \
	$(tgt_dir)/pp.html \
	$(tgt_dir)/resume.html \
	$(tgt_dir)/snetl.html \

all: $(static)

clean:
	rm -f $(tgt_dir)/*

$(tgt_dir)/ae.html: ae.md
	pandoc --template=$(html_template) -o $(tgt_dir)/ae.html ae.md

$(tgt_dir)/fd.html: fd.md
	pandoc --template=$(html_template) -o $(tgt_dir)/fd.html fd.md

$(tgt_dir)/index.html: index.md
	pandoc --template=$(base_template) -o $(tgt_dir)/index.html index.md

$(tgt_dir)/ipr.html: ipr.md
	pandoc --template=$(html_template) -o $(tgt_dir)/ipr.html ipr.md

$(tgt_dir)/loc.html: loc.html
	cp loc.html $(tgt_dir)/loc.html

$(tgt_dir)/pp.html: pp.html
	cp pp.html $(tgt_dir)/pp.html

$(tgt_dir)/resume.html: resume.html
	cp resume.html $(tgt_dir)/resume.html

$(tgt_dir)/snetl.html: snetl.html
	cp snetl.html $(tgt_dir)/snetl.html

