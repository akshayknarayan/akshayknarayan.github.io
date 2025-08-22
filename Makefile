all: index.html coffee.html cv.pdf

coffee.html: coffee/*.rkt main.css map.css
	racket coffee/index.rkt > coffee.html || rm coffee.html

index.html: index.rkt publications.rkt main.css
	racket index.rkt > index.html || rm index.html

cv.pdf: cv.rkt cv/*.tex publications.rkt service.rkt students.rkt
	raco scribble --latex cv.rkt
	tectonic cv.tex
