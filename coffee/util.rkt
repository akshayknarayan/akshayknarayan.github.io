#lang scribble/html

@require[
  racket/string
  racket/set
]

@provide[cafe-list make-cafe link-cafe list-cafes city]

@(define (para-style) "text-align:left; display:inline-block")

@(define cafe-list (mutable-set))

@(struct cafe (name url address latlon) #:transparent)
@(define (make-cafe name
  #:url url
  #:address address
  #:latlon location)
  (cafe name url address location)
)

@(define (link-cafe cafe)
  (set-add! cafe-list cafe)
  @a[href: (cafe-url cafe) (cafe-name cafe)])

@(define (list-cafes)
  @text{Cafes: @ul{
    @(for/list ([c cafe-list]) @li[(cafe-name c)])}
  })

@(define (city #:name name #:abbrv abbrv paras)
  (list
    @h4[id: abbrv name]{ @a[href: (string-append "#" abbrv)]{☕︎}}
	@list-cafes
	@div[style: @para-style]{@ul{@(for/list ([p paras]) @li[p])}}
  ))
