all: index.html coffee.html res/akshay-narayan-cv.pdf

coffee.html: coffee/*.rkt main.css map.css
	racket coffee/index.rkt > coffee.html || rm coffee.html

index.html: index.rkt publications.rkt service.rkt main.css
	racket index.rkt > index.html || rm index.html

cv.tex: cv.rkt cv/*.tex publications.rkt service.rkt students.rkt
	raco scribble --latex cv.rkt

cv.pdf: cv.tex
	tectonic cv.tex

res/akshay-narayan-cv.pdf: cv.pdf
	cp cv.pdf res/akshay-narayan-cv.pdf
