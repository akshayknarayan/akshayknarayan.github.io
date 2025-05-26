#lang scribble/html

@require["util.rkt"]

@provide[london]

@(define (london make-cafe)
  @(list
  @text{
    @link-cafe[@make-cafe[
          #:name "Prufrock Coffee"
          #:url "https://www.prufrockcoffee.com/"
          #:location (make-location #:address "23-25 Leather Lane EC1N 7TE, London" 
                                    #:latlon "51.5199, -0.1095")
    ]]
    in Farringdon has (somewhat shockingly) table service at very reasonable prices. The coffee is excellent; 
    they have a rotating selection of single-origin filter brews also.
  }

  @text{
    @link-cafe[@make-cafe[
          #:name "Ideal Espresso"
          #:url "https://www.ideal-espresso.com/"
          #:location (make-location #:address "Greenwich Market, London, SE10 9HZ"
                                    #:latlon "51.4816, -0.009")
    ]]
    in @a[href: "https://greenwichmarket.london/"]{Greenwich Market} 
    has an old-school lever machine, and brews good Italian-style dark-roasted espresso. 
    Note that their stall can move around within the market.
  }))
