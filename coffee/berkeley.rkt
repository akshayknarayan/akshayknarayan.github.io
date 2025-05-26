#lang scribble/html

@require["util.rkt"
         "preamble.rkt"]

@provide[berkeley]

@(define (berkeley make-cafe) (list
  @text{
    @link-cafe[@make-cafe[
      #:name "CoRo"
      #:url "https://www.corocoffee.com/"
      #:location (make-location #:address "2322 Fifth Street, Berkeley, CA 9471" 
                                #:latlon "37.8625, -122.2972")
    ]] and
    @link-cafe[@make-cafe[
      #:name "Artis"
      #:url "https://www.artiscoffee.com/"
      #:location (make-location #:address "1717 4th Street, Berkeley, CA 94720" 
                                #:latlon "37.8716, -122.3011")
    ]]
    are good options if you've just had lunch at @a[href: "http://vikschaat.com/"]{Vik's} (or are otherwise near the Fourth Street area).
    The closest @link-cafe[@make-cafe[
      #:name "Highwire"
      #:url "https://www.highwirecoffee.com/"
      #:location (make-location #:address "Rockridge Market Hall, 5615 College Ave, Oakland, CA 94618" 
                                #:latlon "37.8436, -122.2516"
                                #:show #f)
    ]] is now in @a[href: "https://www.rockridgemarkethall.com/highwire-coffee-roasters"]{Rockridge Market Hall} - the San Pablo location has sadly closed.
  }

  @text{
    @link-cafe[@make-cafe[
      #:name "Guerilla Cafe"
      #:url "https://places.singleplatform.com/guerilla-cafe/menu"
      #:location (make-location #:address "1620 Shattuck Ave., Berkeley, CA 94709" 
                                #:latlon "37.8779, -122.2692")
    ]]
    uses Artis beans (and a few pastries from @a[href: "http://www.thirdculturebakery.com/"]{Third Culture Bakery}) in a more easily accessible near-downtown location.
  }

  @text{
    The old favorite near Soda Hall, Nefeli Cafe, is now closed, as has Brewed Awakening. Instead, 
    @link-cafe[@make-cafe[
      #:name "Mind"
      #:url "https://www.themindcoffee.com/"
      #:location (make-location #:address "1816 Euclid Ave, Berkeley, CA 94709" 
                                #:latlon "37.8758, -122.2604")
    ]]
    is probably the best option.
  }

  @text{
    @link-cafe[@make-cafe[
      #:name "Asha"
      #:url "https://www.ashateahouse.com/pages/locations"
      #:location (make-location #:address "2086 University Ave, Berkeley, CA 94704" 
                                #:latlon "37.8720, -122.2689")
    ]]
    is, as far as I'm concerned, the One True Boba Place.
  }

  @text{
    @scouting-report-label Vipul recommends 
    @link-cafe[@make-cafe[
      #:name "Timeless"
      #:url "https://timelesscoffee.com/"
      #:location (make-location #:address "4252 Piedmont Ave., Oakland, CA 94611" 
                                #:latlon "37.8283, -122.2498"
                                #:show #f)
      #:scouting #t
    ]]
    in Oakland and 
    @link-cafe[@make-cafe[
      #:name "Ain't Normal"
      #:url "https://aintnormalcafe.com/"
      #:location (make-location #:address "5701 College Ave, Oakland, CA 94618" 
                                #:latlon "37.8454, -122.2520" 
                                #:show #f)
      #:scouting #t
    ]]
    in Rockridge.
  }))
