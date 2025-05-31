all: index.html coffee.html

coffee.html: coffee/*.rkt main.css map.css
	racket coffee/index.rkt > coffee.html

index.html: index.rkt main.css
	racket index.rkt > index.html
