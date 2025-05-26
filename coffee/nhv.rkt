#lang scribble/html

@require["util.rkt"]

@provide[newhaven]

@(define (newhaven make-cafe)
  (let* ([
    atticus 
    @make-cafe[
      #:name "Atticus Bookstore/Cafe/Market"
      #:url "https://atticusnhv.com/"
      #:location (make-location #:address "1082 Chapel Street, New Haven, CT 06511"                            
                                #:latlon "41.3079, -72.9306")
      #:additional-locations @(list
        (make-location #:address "771 Orange Street, New Haven, CT 06511"                            
                       #:latlon "41.3215, -72.9118"))
    ]])
    (list
    @text{
    @link-cafe[atticus] is a good option. The @link-cafe[atticus "Bookstore/Cafe" (list #t cafe-location)] is downtown, and the @link-cafe[atticus "Cafe/Market" (list #t (compose1 first cafe-additional-locations))] is in the East Rock neighborhood near Yale. The Cafe/Market also offers New Haven style pizza by the slice on some days.
    })))
