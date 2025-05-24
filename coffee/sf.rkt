#lang scribble/html

@require["util.rkt"
         "preamble.rkt"]

@provide[sf]

@(define (sf make-cafe)
  (let* ([
    ritual @make-cafe[
      #:name "Ritual Coffee Roasters"
      #:url "http://www.ritualroasters.com/locations"
      #:location (make-location #:address "1026 Valencia Street San Francisco, CA 94110" 
                                #:latlon "37.7565, -122.4212")
      #:additional-locations (list 
        (make-location #:address "Gate B4, Harvey Milk Terminal 1B, San Francisco, CA 94128"
                       #:latlon "37.61379, -122.38519"
                       #:show #f))
    ]])
  (list
  @text{
    @link-cafe[ritual] is probably my favorite cappuccino in San Francisco.
  }

  @text{
    @link-cafe[@make-cafe[
      #:name "Dandelion Chocolate"
      #:url "https://www.dandelionchocolate.com/"
      #:location (make-location #:address "740 Valencia Street San Francisco, CA 94110" 
                                #:latlon "37.7610, -122.4217")
    ]]
    may have chocolate in its name (and indeed, the chocolate is good), but they serve great coffee! Here, I recommend the Mission Hot Chocolate or Mission Mocha (they use @a[href: "https://www.fourbarrelcoffee.com/"]{Four Barrel} beans).
  }

  @text{
    At SFO airport, T1 has a @link-cafe[ritual "Ritual" (list #t (compose1 first cafe-additional-locations))] just past security near gate B4, and T2 has
    @link-cafe[@make-cafe[
      #:name "Napa Farms Market"
      #:url "https://www.flysfo.com/passengers/shop-dine-relax/napa-farms-market"
      #:location (make-location #:address "Gate D1 Terminal 2, San Francisco, CA 94128" 
                                #:latlon "37.61718, -122.38255" 
                                #:show #f)
    ]], 
    also just past security near gate D1,
    which serves beans from @a[href: "https://www.equatorcoffees.com/"]{Equator Coffee} (but is otherwise unaffiliated).
  }

  @text{
    @scouting-report-label The SF coffee scene has seen a lot of evolution since the above two recs (which are still good). Rachee likes 
    @link-cafe[@make-cafe[
      #:name "The Mill"
      #:url "https://www.themillsf.com"
      #:location (make-location #:address "736 Divisadero Street San Francisco, CA" 
                                #:latlon "37.7764, -122.4380")
      #:scouting #t
    ]],
    which serves 
    @link-cafe[@make-cafe[
      #:name "Four Barrel"
      #:url "https://www.fourbarrelcoffee.com/"
      #:location (make-location #:address "375 Valencia St, San Francisco, CA 94103" 
                                #:latlon "37.7670, -122.4220")
    ]]
    beans. Vipul likes 
    @link-cafe[@make-cafe[
      #:name "Golden Goat Coffee"
      #:url "https://www.goldengoatcoffee.com/visit"
      #:location (make-location #:address "599 3rd Street San Francisco, CA 94107" 
                                #:latlon "37.7805, -122.3945")
      #:scouting #t
    ]]
    in SoMa.
  })))
