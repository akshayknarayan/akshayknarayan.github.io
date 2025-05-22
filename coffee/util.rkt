#lang scribble/html

@require[
  racket/string
  racket/set
  racket/math
  net/uri-codec
  "preamble.rkt"
]

@provide[
  link-cafe 
  ; Given a list of cafes, produce a map showing them.
  city]

@(define (lon_to_xtile lon zoom)
  (define n (expt 2 zoom))
  (* (/ (+ lon 180.0) 360.0) n)
)

@(define (lat_to_ytile lat zoom)
  (define n (expt 2 zoom))
  (define lat-rad (degrees->radians lat))
  (* (/ (- 1.0 (/ (log (+ (tan lat-rad) (/ 1.0 (cos lat-rad)))) pi)) 2.0) n)
)

@(define (latlon_to_pixel_offset lat lon zoom tile_x tile_y)
  (define lat_rad (degrees->radians lat))
  (define x_px (* 256 (lon_to_xtile lon zoom)))
  (define y_px (* 256 (lat_to_ytile lat zoom)))
  (cons (inexact->exact (round (- x_px (* tile_x 256)))) (inexact->exact (round (- y_px (* tile_y 256)))))
)


@(define (pixel-size min-tile max-tile) (inexact->exact (* 256 (+ 1 (- max-tile min-tile)))))

@(define (maptile-url x y zoom)
  (format "https://a.basemaps.cartocdn.com/rastertiles/voyager/~a/~a/~a.png" zoom x y))

@(define (annotation cafe base_tile_x base_tile_y)
  @(define xy (latlon_to_pixel_offset (cafe-lat cafe) (cafe-lon cafe) zoom base_tile_x base_tile_y))
  @a[class: "annotation" 
     style: (format "left: ~apx; top: ~apx; background-color: ~a;" 
                    (car xy) 
                    (cdr xy)
                    (if (cafe-scouting cafe) @scouting-report-color "#2aa198"))
     data-label: (cafe-name cafe)
     href: (gmap-link cafe)
  ]
)

@(define zoom 13)
@(define (map-cafes cafes)
  (define xtiles (for/list ([c cafes]) (floor (lon_to_xtile (cafe-lon c) zoom))))
  (define ytiles (for/list ([c cafes]) (floor (lat_to_ytile (cafe-lat c) zoom))))
  (define min-xtile (apply min xtiles))
  (define max-xtile (apply max xtiles))
  (define min-ytile (apply min ytiles))
  (define max-ytile (apply max ytiles))
  (define tiles (cartesian-product 
                  (inclusive-range min-xtile max-xtile)
                  (inclusive-range min-ytile max-ytile)))
  @text{@div[
    class: "map-container" 
    style: (format "width:~apx; height:~apx;" (pixel-size min-xtile max-xtile) (pixel-size min-ytile max-ytile))
  ]{
    @div[class: "map"]{
      @text{
      @(for/list ([t tiles])
        @(define x (first t))
        @(define y (second t))
        @img[class: "tile"
             src: (maptile-url x y zoom)
             style: (format "left: ~apx; top: ~apx;" 
                            (inexact->exact (* 256 (- x min-xtile))) 
                            (inexact->exact (* 256 (- y min-ytile))))
        ])
      @(for/list ([c cafes])
         @(annotation c min-xtile min-ytile)
      )}}
  }})

@(define cafe-list (mutable-set))

@(struct cafe (name url address lat lon show scouting) #:transparent)
@(define (gmap-link cafe) (format "https://google.com/maps?q=~a+(@~a,~a)" 
                            (uri-encode (cafe-address cafe)) 
                            (cafe-lat cafe) 
                            (cafe-lon cafe)))
   
@(define (link-cafe cafe)
  (if (cafe-show cafe)
      @a[href: (cafe-url cafe) (cafe-name cafe)]
      @(list @a[href: (cafe-url cafe) (cafe-name cafe)] " " @a[href: (gmap-link cafe)]{(📍)})))

@(define (city 
          #:name name 
          #:abbrv abbrv 
          body)
  ; Finally, declare a city block
  @(define cafe-list (mutable-set))
  @(define (make-cafe
    #:name name
    #:url url
    #:address address
    #:latlon location
    #:show [show #t]
    #:scouting [scouting #f])
    @(let* ([latlon (string-split location ",")]
            [lat (string->number (string-trim (first latlon)))]
            [lon (string->number (string-trim (second latlon)))]
            [c (cafe name url address lat lon show scouting)])
      (set-add! cafe-list c)
      c
    ))
  ; evaluate the body, populating cafe-list
  @(define paras (body make-cafe))

  @text{
  @h4[id: abbrv name]{ @a[href: (string-append "#" abbrv)]{☕︎}}
  @(map-cafes (filter cafe-show (set->list cafe-list)))
  @div[style: "text-align:left; display:inline-block"]{@ul{@(for/list ([p paras]) @li[p])}}
  })
