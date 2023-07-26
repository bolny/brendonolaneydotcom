www:
	mkdir -p ./www
	make -C ./src

clean:
	rm -rf www
