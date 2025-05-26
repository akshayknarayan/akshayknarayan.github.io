#lang scribble/html

@require["util.rkt"]

@provide[austin]

@(define (austin make-cafe)
  (list @text{
    @link-cafe[@make-cafe[
      #:name "Medici Roasting"
      #:url "https://mediciroasting.com"
      #:location (make-location #:address "2222B Guadalupe Street Austin, TX 78705"
                                #:latlon "30.2966, -97.7421")
      #:additional-locations (list
        (make-location #:address "1023 Springdale Road #1A, Austin, TX 78721"
                       #:latlon "30.2673, -97.6939")
        (make-location #:address "1101 West Lynn St, Austin, TX 78703"
                       #:latlon "30.2795, -97.7594")
        (make-location #:address "1100 South Lamar Blvd., Suite 2125, Austin, TX 78704"
                       #:latlon "30.2557, -97.7627")
        (make-location #:address "10727 Domain Dr, Austin, TX 78758"
                       #:latlon "30.3935, -97.7257"
                       #:show #f)
        (make-location #:address "Gate 7, Austin-Bergstrom International Airport, Austin, TX 78719"
                       #:latlon "30.2024, -97.6633"
                       #:show #f))
    ]]
    is a good option near the UT campus.
    }))
