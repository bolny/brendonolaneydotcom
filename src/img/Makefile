tgt_dir := ../../www/img
pngs := $(addprefix $(tgt_dir)/,$(wildcard *.png))
jpgs := $(addprefix $(tgt_dir)/,$(wildcard *.jpg))
built_diagrams := $(addsuffix .png,$(basename $(wildcard *.puml)))
diagrams := $(foreach built_diagram,$(built_diagrams),$(tgt_dir)/$(built_diagram))

all: $(tgt_dir) $(pngs) $(jpgs) $(diagrams)

clean:
	rm -rf $(tgt_dir)
	rm -f $(built_diagrams)

$(tgt_dir):
	mkdir -p $(tgt_dir)

$(built_diagrams):
	plantuml ./$(addsuffix .puml,$(basename $@))

$(diagrams): $(built_diagrams)
	mv $(subst $(tgt_dir),.,$@) $(tgt_dir)/

$(tgt_dir)/%.png:
	cp ./$*.png $(tgt_dir)/$*.png

$(tgt_dir)/%.jpg:
	cp ./$*.jpg $(tgt_dir)/$*.jpg
