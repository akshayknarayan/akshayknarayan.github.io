#lang scribble/html

@require[
  racket/string
  racket/set
  racket/math
]

@provide[cafe-list make-cafe link-cafe list-cafes city]

@(define (para-style) "text-align:left; display:inline-block")

@(define cafe-list (mutable-set))

@(struct cafe (name url address lat lon) #:transparent)
@(define (make-cafe name
  #:url url
  #:address address
  #:latlon location)
  @(let* ([latlon (string-split location ",")]
         [lat (string->number (string-trim (first latlon)))]
         [lon (string->number (string-trim (second latlon)))]
        )
    (cafe name url address lat lon)
  )
)

@(define (link-cafe cafe)
  (set-add! cafe-list cafe)
  @a[href: (cafe-url cafe) (cafe-name cafe)])

@(define (list-cafes cafes)
  @text{Cafes: @ul{
    @(for/list ([c cafes]) @li[(cafe-name c)])}
  })

; Given a list of cafes, produce a map showing them.

@(define zoom 13)

@(define (lon_to_xtile lon zoom)
  (define n (expt 2 zoom))
  (floor (* (/ (+ lon 180.0) 360.0) n))
)

@(define (lat_to_ytile lat zoom)
  (define n (expt 2 zoom))
  (define lat-rad (degrees->radians lat))
  (floor (* (/ (- 1.0 (/ (log (+ (tan lat-rad) (/ 1.0 (cos lat-rad)))) pi)) 2.0) n))
)

@(define (latlon_to_pixel_offset lat lon zoom tile_x tile_y)
  (define lat_rad (degrees->radians lat))
  (define x_px (* 256 (lon_to_xtile lon zoom)))
  (define y_px (* 256 (lat_to_ytile lat zoom)))
  (cons (- x_px (* tile_x 256)) (- y_px (* tile_y 256)))
)

@(define (pixel-size min-tile max-tile) (inexact->exact (* 256 (+ 1 (- max-tile min-tile)))))

@(define (maptile-url x y zoom)
   (format "https://a.basemaps.cartocdn.com/rastertiles/voyager/~a/~a/~a.png" zoom x y))

@(define (map-cafes cafes)
  (define xtiles (for/list ([c cafes]) (lon_to_xtile (cafe-lon c) zoom)))
  (define ytiles (for/list ([c cafes]) (lat_to_ytile (cafe-lat c) zoom)))
  (define min-xtile (apply min xtiles))
  (define max-xtile (apply max xtiles))
  (define min-ytile (apply min ytiles))
  (define max-ytile (apply max ytiles))
  (define tiles (cartesian-product 
                  (inclusive-range min-xtile max-xtile)
                  (inclusive-range min-ytile max-ytile)))
  @text{
  @div[
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
        ]
      )}
    }
  }
  }
)

; Finally, declare a city block

@(define (city #:name name #:abbrv abbrv paras) @text{
  @h4[id: abbrv name]{ @a[href: (string-append "#" abbrv)]{☕︎}}
  @(map-cafes cafe-list)
  @div[style: @para-style]{@ul{@(for/list ([p paras]) @li[p])}}
  })
