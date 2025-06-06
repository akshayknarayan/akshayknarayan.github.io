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
  make-location
  cafe-location
  cafe-additional-locations
  fmt-paras
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

@(define (annotation cafe zoom base_tile_x base_tile_y)
  (define xy (latlon_to_pixel_offset (location-lat (cafe-location cafe)) (location-lon (cafe-location cafe)) zoom base_tile_x base_tile_y))
  @a[class: "annotation" 
     style: (format "left: ~apx; top: ~apx; background-color: ~a;" 
                    (car xy) 
                    (cdr xy)
                    (if (cafe-scouting cafe) @scouting-report-color "#2aa198"))
     data-label: (cafe-name cafe)
     href: (gmap-link (cafe-location cafe))
  ]
)

@(define (expand-cafe c)
  ; new address and lat/lon for each cafe-additional-locations, copy name and URL
  ; clear additional-locations after
  (list*
    (cafe
        (cafe-name c)
        (cafe-url c)
        (cafe-location c)
        '()
        (cafe-scouting c))
    (for/list ([l (cafe-additional-locations c)]) (cafe
        (cafe-name c)
        (cafe-url c)
        l
        '()
        (cafe-scouting c)))))

@(define (map-cafes #:cafes cafes #:zoom zoom)
  (define all-cafes (filter (compose1 location-show cafe-location) (flatten (for/list ([c cafes]) (expand-cafe c)))))
  (define xtiles (for/list ([c all-cafes]) (floor (lon_to_xtile (location-lon (cafe-location c)) zoom))))
  (define ytiles (for/list ([c all-cafes]) (floor (lat_to_ytile (location-lat (cafe-location c)) zoom))))
  (define min-xtile (apply min xtiles))
  (define max-xtile (apply max xtiles))
  (define min-ytile (apply min ytiles))
  (define max-ytile (apply max ytiles))
  (define tiles (cartesian-product 
                  (inclusive-range min-xtile max-xtile)
                  (inclusive-range min-ytile max-ytile)))
  @div[class: "map-container-with-toggle"]{
  @input[type: "checkbox" class: "toggle"]
  @span[class: "toggle-label"]
  @br
  @div[
    class: "map-container"
    style: (format "width:~apx; height:~apx;"
                   (pixel-size min-xtile max-xtile)
                   (pixel-size min-ytile max-ytile))
  ]{
    @div[class: "map"]{
      @text{
      @(for/list ([t tiles])
        (define x (first t))
        (define y (second t))
        @div[
          class: "tile"
          style: (format "left: ~apx; top: ~apx; background-image: url(~a);"
            (inexact->exact (* 256 (- x min-xtile)))
            (inexact->exact (* 256 (- y min-ytile)))
            (maptile-url x y zoom)
          )
        ])
      @(for/list ([c all-cafes])
         (annotation c zoom min-xtile min-ytile)
      )}}
  }})

@(struct location (address lat lon show) #:transparent)
@(define (make-location #:address address
                        #:latlon coords
                        #:show [show #t])
  (define (parse-lat-lon str)
    (define latlon (for/list ([num-str (string-split str ",")]) (string->number (string-trim num-str))))
    (cons (first latlon) (second latlon)))
  (define latlon (parse-lat-lon coords))
  (location address (car latlon) (cdr latlon) show))

@(define (gmap-link loc) (format "https://google.com/maps?q=~a+(@~a,~a)" 
                            (uri-encode (location-address loc)) 
                            (location-lat loc) 
                            (location-lon loc)))

@(struct cafe (name url location additional-locations scouting) #:transparent)
   
@(define (link-cafe cafe [name (cafe-name cafe)] [show-pin (list #f cafe-location)])
  ; if show-pin is given, show a pin link to the specified location.
  ; by default, if the cafe wasn't shown, show a pin link to the primary location.
  (define name-link @a[href: (cafe-url cafe) name])
  (if (first show-pin)
      (list @name-link " " @a[href: (gmap-link ((second show-pin) cafe))]{(📍)})
      (if (location-show (cafe-location cafe))
          @name-link
          (list @name-link " " @a[href: (gmap-link (cafe-location cafe))]{(📍)}))))

@(define (fmt-paras ps) (if (> (length ps) 1)
                            @ul{@(for/list ([p ps]) @li[p])}
                            @p[class: "ul-aligned-para" ps]))

@(define (city 
          #:name name 
          #:abbrv abbrv 
          #:mapzoom [zoom 13]
          body-fn)
  ; Finally, declare a city block
  (define cafe-list (mutable-set))
  (define (make-cafe
    #:name name
    #:url url
    #:location location
    #:additional-locations [addr-loc-list '()] ; list of location
    #:scouting [scouting #f])
    (let* ([c (cafe name url location addr-loc-list scouting)])
      (set-add! cafe-list c)
      c
    ))
  ; evaluate the body, populating cafe-list
  (define body (body-fn make-cafe))

  @text{
  @h2[id: abbrv name]{ @a[href: (string-append "#" abbrv)]{☕︎}}
  @div[style: "display: flex; flex-wrap: wrap-reverse; align-items: flex-end; gap: 20px;"]{
  @div[style: "text-align:left; flex: 1; min-width: 40%;"]{
    @(if (list? body) 
         (fmt-paras body)
         body)}
  @(if (not (set-empty? cafe-list)) 
       (map-cafes #:cafes (set->list cafe-list) #:zoom zoom) 
       '())
  }})
