tgt_dir:=../../www/font

all: $(tgt_dir)/ \
	$(tgt_dir)/charter_bold.woff2 \
	$(tgt_dir)/charter_bold_italic.woff2 \
	$(tgt_dir)/charter_italic.woff2 \
	$(tgt_dir)/charter_regular.woff2 \
    $(tgt_dir)/drafting_mono_medium.woff2

clean:
	rm -rf $(tgt_dir)/

$(tgt_dir)/:
	mkdir -p $(tgt_dir)

$(tgt_dir)/charter_bold.woff2: ./charter_bold.woff2
	cp charter_bold.woff2 $(tgt_dir)/charter_bold.woff2

$(tgt_dir)/charter_bold_italic.woff2: ./charter_bold_italic.woff2
	cp charter_bold_italic.woff2 $(tgt_dir)/charter_bold_italic.woff2

$(tgt_dir)/charter_italic.woff2: ./charter_italic.woff2
	cp charter_italic.woff2 $(tgt_dir)/charter_italic.woff2

$(tgt_dir)/charter_regular.woff2: ./charter_regular.woff2
	cp charter_regular.woff2 $(tgt_dir)/charter_regular.woff2

$(tgt_dir)/drafting_mono_medium.woff2: ./drafting_mono_medium.woff2
	cp drafting_mono_medium.woff2 $(tgt_dir)/drafting_mono_medium.woff2
