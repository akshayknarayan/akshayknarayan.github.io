#lang scribble/html

@require["util.rkt"]

@provide[rhein-main]

@(define (rhein-main make-cafe)
  @div{
    @h5[style: "margin-left:5%"]{Mainz}
    @(fmt-paras (list
      @text{
        In Altstadt,
        @link-cafe[@make-cafe[
          #:name "Après"
          #:url "https://www.instagram.com/apres.mainz/"
          #:location (make-location #:address "Christofsstraße 11, Mainz, Germany 55116"
                                    #:latlon "50.0024, 8.2721")
        ]]
        is good.
      }))
  })
