tgt_dir:=../www
static := $(tgt_dir)/favicon.ico $(tgt_dir)/robots.txt $(tgt_dir)/index.html
dir := $(tgt_dir)/css $(tgt_dir)/img $(tgt_dir)/work

all: $(static) $(dir)

clean:
	rm -f $(tgt_dir)/*

$(tgt_dir)/favicon.ico: favicon.ico
	cp favicon.ico $(tgt_dir)/favicon.ico

$(tgt_dir)/robots.txt: robots.txt
	cp robots.txt $(tgt_dir)/robots.txt

$(tgt_dir)/index.html: index.html
	cp index.html $(tgt_dir)/index.html

$(tgt_dir)/css:
	mkdir -p $(tgt_dir)/css
	make -C ./css

$(tgt_dir)/img:
	mkdir -p $(tgt_dir)/img
	make -C ./img

$(tgt_dir)/work:
	mkdir -p $(tgt_dir)/work
	make -C ./work
