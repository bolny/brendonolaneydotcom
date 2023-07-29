tgt_dir:=../../www/css

all: $(tgt_dir)/ $(tgt_dir)/style.css

clean:
	rm -rf $(tgt_dir)/

$(tgt_dir)/:
	mkdir -p $(tgt_dir)

$(tgt_dir)/style.css: ./style.css
	cp style.css $(tgt_dir)/style.css
