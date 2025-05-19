#lang scribble/html
@require[
  scribble/html
  racket/string
  racket/set
  "preamble.rkt"
]

@(define (style) (list  
@link[rel:"stylesheet" href:"https://fonts.googleapis.com/css2?family=Recursive:slnt,CASL,MONO@-1,0.75,0.25&display=swap"]
@link[rel:"stylesheet" href:"main.css"]
@link[rel:"stylesheet" href:"map.css"]
))

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


@doctype{html}
@html[lang: "en"]{
@head{
@title{Coffee}
@meta[charset: "utf-8"]
@style
}
@body{
@preamble

@city[#:name "Providence"
      #:abbrv "pvd"]{
  @(list
  @text{Near Brown University,
  @link-cafe[@make-cafe[#:url "https://www.boltcoffeeco.com/"
    #:address "224 Benefit St, Providence, RI 02903"
    #:latlon "41.8269, -71.4075"
    "Bolt Coffee"
  ]]
  inside the RISD Museum is nice.
  @link-cafe[@make-cafe[#:url "http://www.ceremonypvd.com/onlineorder"
    #:address "406 Brook Street, Providence, RI 02906"
    #:latlon "41.8287, -71.3996"
    "Ceremony"
  ]]
  is also good, though it is primarily tea-focused.}

  @text{
  @link-cafe[@make-cafe[#:url "https://www.thecoffeeexchange.com/"
        #:address "207 Wickenden St.  Providence, RI 02903"
        #:latlon "41.8194, -71.3991"
        "Coffee Exchange"
  ]] on Wickenden St. is a great local roaster and has an extensive selection of beans. I recommend their light roast espresso. Nearby,
  @link-cafe[@make-cafe[#:url"https://www.brownbeecoffee.com/"
        #:address "404 Benefit Street, Providence RI 02903"
        #:latlon "41.8203, -71.4017"
        "Brown Bee Coffee"
  ]] is a promising newcomer with a strong pastry program.}

  @text{
  @link-cafe[@make-cafe[#:url "http://smallpointcafe.com/"
        #:address "230 Westminster Street Providence, RI 02903"
        #:latlon "41.8230, -71.4125"
        "Small Point Cafe"
  ]] is a good option downtown. There are also two other Bolt locations in downtown Providence.}

  @text{
  @link-cafe[@make-cafe[#:url "https://sevenstarsbakery.com/"
        #:address "103 Point St, Providence, RI"
        #:latlon "41.8165, -71.4076"
        "Seven Stars Bakery"
  ]] has George Howell Coffee and also good pastries, bread, etc.}
  )}
}}
