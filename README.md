# brendonolaney.com

The source I use to generate my website. The only software requirement is a
recent version of Pandoc.

All markdown files are licensed as CC0, while everything else is licensed as
0BSD making everything in this repository public domain.

## Notes on building

Requires make, pandoc, and plantuml. I deploy this on Debian stable so the
packages are `make`, `pandoc`, and `plantuml`. The version of plantuml in
debian stable is ancient compared to the one I use on my development computer,
but the binary just points java to a jar file that you can swap out for a
modern one. I just throw versioned files into the folder and symlink the one
that I want.
