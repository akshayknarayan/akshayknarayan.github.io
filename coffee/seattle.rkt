#lang scribble/html

@require["util.rkt" "preamble.rkt"]

@provide[seattle]

@(define (seattle make-cafe) (list
  @text{
    @link-cafe[@make-cafe[
      #:name "Espresso Vivace"
      #:url "http://espressovivace.com/"
      #:location (make-location #:address "532 Broadway Ave East Seattle WA 98102" 
                                #:latlon "47.6238, -122.3208")
    ]]
    has a founder who @a[href: "https://en.wikipedia.org/wiki/Espresso_Vivace"]{apparently invented latte art}. This has been my first stop after multiple red eye flights.
  }

  @text{
    @link-cafe[@make-cafe[
      #:name "Floret"
      #:url "http://floretseattle.com/"
      #:location (make-location #:address "Gate A1, SeaTac Airport, SeaTac, WA" 
                                #:latlon "47.4427, -122.3022")
    ]],
    in SeaTac Airport near the A gates, which has Stumptown beans and surprisingly good coffee for an airport. It's also a great option for vegetarian food at the airport.
  }

  @text{
    In Bellevue,
    @link-cafe[@make-cafe[
      #:name "Third Culture Coffee"
      #:url "https://thirdculturecoffee.com/"
      #:location (make-location #:address "80 102nd Ave NE, Bellevue, WA 98004" 
                                #:latlon "47.6108, -122.2041")
    ]]
    is a good option, also with has Indian-inspired options like filter coffee and chai.
  }

  @text{
    In Renton, 
    @link-cafe[@make-cafe[
      #:name "Boon Boona Coffee"
      #:url "https://www.boonboonacoffee.com/"
      #:location (make-location #:address "724 S 3rd Street, Ste. C, Renton, WA 98057" 
                                #:latlon "47.4798, -122.2067")
      #:additional-locations (list
        (make-location #:address "1223 East Cherry Street Ste. C121B, Seattle, WA 98122" 
                       #:latlon "47.6076, -122.3167")
        (make-location #:address "4326 University Way NE, Seattle, WA 98105" 
                       #:latlon "47.6602, -122.3128"))
    ]],
    focusing on Ethiopian and Rwandan coffee, is the best option. 
    The cappuccino is not great; I recommend a cortado instead.
  }

  @text{
    @link-cafe[@make-cafe[
      #:name "Five Stones"
      #:url "https://5stonescoffeeco.com/"
      #:location (make-location #:address "8102 161st Avenue NE Redmond, WA 98052" 
                                #:latlon "47.6763, -122.1254")
      #:additional-locations (list
        (make-location #:address "312 Central Way Kirkland, WA 98033" 
                       #:latlon "47.6777, -122.2029"))
    ]]
    in Redmond will make you a @a[href: "https://en.wikipedia.org/wiki/Cappuccino#Capuccino_Freddo"]{cappuccino freddo}, which is not something you usually see.
  }

  @text{
    @scouting-report-label Panda reports that
    @link-cafe[@make-cafe[
      #:name "Ada's Technical Books & Cafe"
      #:url "https://adasbooks.com/adas-cafe-menu"
      #:location (make-location #:address "425 15th Ave E Seattle, WA 98112" 
                                #:latlon "47.6227, -122.3128")
      #:scouting #t
    ]]
    (also in Capitol Hill) and 
    @link-cafe[@make-cafe[
      #:name "Santo"
      #:url "https://www.santocoffee.co/"
      #:location (make-location #:address "1325 Northeast 65th Street Seattle, WA, 98115" 
                                #:latlon "47.6757, -122.3135")
      #:scouting #t
    ]]
    (a bit north of the U-District) are good. Rachee recommends 
    @link-cafe[@make-cafe[
      #:name "Victrola"
      #:url "https://www.victrolacoffee.com/pages/locations"
      #:location (make-location #:address "310 E Pike St, Seattle, WA 98122" 
                                #:latlon "47.6143, -122.3273")
      #:additional-locations (list
        (make-location #:address "411 15th Ave E, Seattle, WA 98112" 
                       #:latlon "47.6223, -122.3128")
        (make-location #:address "300 Pine St Suite 100, Seattle, WA 98101" 
                       #:latlon "47.6109, -122.3386"))
      #:scouting #t
    ]].
  }))
