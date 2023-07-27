www:
	mkdir -p ./www
	make -C ./src

clean:
	rm -rf www
	rm -f src/blog/index.md
	rm -f src/blog/rss.xml
