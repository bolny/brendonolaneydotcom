tgt_dir := ../www
template := ./template.html

static := $(tgt_dir)/favicon.ico \
	$(tgt_dir)/robots.txt \
	$(tgt_dir)/index.html \

dir := $(tgt_dir)/css \
	$(tgt_dir)/img \
	$(tgt_dir)/blog \
	$(tgt_dir)/font \

all: $(tgt_dir)/ $(static) $(dir)

clean:
	make -C ./css clean
	make -C ./img clean
	make -C ./blog clean
	make -C ./font clean
	rm -rf $(tgt_dir)/

$(tgt_dir)/:
	mkdir -p $(tgt_dir)

$(tgt_dir)/favicon.ico:
	cp favicon.ico $(tgt_dir)/favicon.ico

$(tgt_dir)/robots.txt:
	cp robots.txt $(tgt_dir)/robots.txt

$(tgt_dir)/index.html:
	pandoc --template=$(template) -o $(tgt_dir)/index.html index.md

$(tgt_dir)/css:
	make -C ./css

$(tgt_dir)/img:
	make -C ./img

$(tgt_dir)/work:
	make -C ./work

$(tgt_dir)/blog:
	make -C ./blog

$(tgt_dir)/font:
	make -C ./font
