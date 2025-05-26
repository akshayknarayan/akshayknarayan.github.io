#lang scribble/html

@require["util.rkt" "preamble.rkt"]

@provide[slc]

@(define (slc make-cafe)
  (list @text{
    @scouting-report-label Gavin recommends 
    @link-cafe[@make-cafe[
      #:name "Salt Lake Roasting Co."
      #:url "https://roasting.com/"
      #:location (make-location #:address "820 E. 400 S.  Salt Lake City, UT 84102"
                                #:latlon "40.7604, -111.8673")
      #:scouting #t
    ]] 
    (roasting dot com!), 
    @link-cafe[@make-cafe[
      #:name "Blue Copper"
      #:url "https://bluecopperslc.com/"
      #:location (make-location #:address "401 North 300 West Salt Lake City, UT 84103"
                                #:latlon "40.7782, -111.8998")
      #:scouting #t
    ]],
    @link-cafe[@make-cafe[
      #:name "Three Pines Coffee"
      #:url "https://www.threepinescoffee.com/"
      #:location (make-location #:address "165 South Main Street Salt Lake City, UT 84111"
                                #:latlon "40.7297, -111.8911")
      #:scouting #t
    ]], and
    @link-cafe[@make-cafe[
      #:name "Alchemy Coffee"
      #:url "https://alchemycoffee.com/"
      #:location (make-location #:address "390 E 1700 S Salt Lake City, Utah 84115"
                                #:latlon "40.7331, -111.8799")
      #:scouting #t
    ]]
  }))
