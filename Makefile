s = $(shell find static/galeri/ -type f -name *.jpg | sed -e s/$$/.webp/)
default: build/index.html
	

clean:
	rm -rf static/galeri/*.webp
	rm -rf src/routes/slike.js
	rm -rf build

static/galeri/%.jpg.webp: static/galeri/%.jpg
	convert -resize 100x -quality 35 $< $@
	
src/routes/slike.js: static/print.py $s
	static/print.py > $@

build/index.html: src/routes/slike.js
	npm run build

.PHONY: clean default

