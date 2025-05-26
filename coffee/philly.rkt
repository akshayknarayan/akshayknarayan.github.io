#lang scribble/html

@require["util.rkt" "preamble.rkt"]

@provide[phl]

@(define (phl make-cafe)
  (list 
    @text{@a[href: "https://ionathan.ch/2024/04/14/philly-coffee"]{List from a local expert.}}
    @text{
      In "historic" Kennett Square (the mushroom capital of the world), 
      @link-cafe[@make-cafe[
        #:name "Philter"
        #:url "https://philtercoffee.com/"
        #:location (make-location #:address "111 W. State Street Kennett Square, PA., 19348"
                                  #:latlon "39.8468, -75.7121"
                                  #:show #f)
      ]]
      is good.
    }

    @text{
      @scouting-report-label Panda recommends 
      @link-cafe[@make-cafe[
        #:name "K'Far"
        #:url "https://kfarcafe.com"
        #:location (make-location #:address "110 S. 19th St, Philadelphia, PA 19103"
                                  #:latlon "39.9515, -75.1721")
        #:scouting #t
      ]]
      and (as mentioned in the link above) 
      @link-cafe[@make-cafe[
        #:name "Elixr"
        #:url "http://www.elixrcoffee.com/"
        #:location (make-location #:address "207 S Sydenham St, Philadelphia, PA 19102"
                                  #:latlon "39.9494, -75.1667")
        #:additional-locations (list
          (make-location #:address "315 N. 12th St, Philadelphia, PA 19107"
                         #:latlon "39.9582, -75.1581")
          (make-location #:address "3675 Market St, Philadelphia, PA 19104"
                         #:latlon "39.9568, -75.1952")
          (make-location #:address "1600 Market St, Philadelphia, PA 19103"
                         #:latlon "39.9527, -75.167"))
        #:scouting #t
      ]].
    }))
