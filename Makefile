all: index.html coffee.html

coffee.html: coffee/*.rkt main.css map.css
	racket coffee/index.rkt > coffee.html || rm coffee.html

index.html: index.rkt publications.rkt main.css
	racket index.rkt > index.html || rm index.html
