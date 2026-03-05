all: index.html coffee.html res/akshay-narayan-cv.pdf

coffee.html: coffee/*.rkt main.css map.css
	racket coffee/index.rkt > $@ || rm $@

index.html: index.rkt publications.rkt service.rkt main.css
	racket $< > $@ || rm $@

akshay.bib: bib.rkt publications.rkt
	racket $< $@

cv.tex: cv.rkt cv/*.tex publications.rkt service.rkt students.rkt
	raco scribble --latex $<

cv.pdf: cv.tex
	tectonic $<

res/akshay-narayan-cv.pdf: cv.pdf
	cp $< $@
