.PHONY: clean

all:
	haxe compile.hxml
	@cd www; php index.php; cd ..

clean:
	rm -rf www
