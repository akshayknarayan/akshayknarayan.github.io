#lang scribble/html

@require["util.rkt" "preamble.rkt"]

@provide[hawaii]

@(define (hawaii make-cafe) @div{
  @p{
    Hawai'i (the state) has a coffee growing industry, thanks to the volcanoes. Most of the growing happens on Hawai'i (the island), in particular @a[href: "https://en.wikipedia.org/wiki/Kona_coffee"]{Kona coffee}. It's certainly possible to get mass-market coffee (Starbucks, Lavazza, etc) here, but it's worth sampling the local product.
  }

  @h5[style: "margin-left:5%"]{O'ahu}
  @(fmt-paras (list
    @text{
      The best coffee I had in Honolulu was at 
      @link-cafe[@make-cafe[
        #:name "Honolulu Coffee"
        #:url "https://www.honolulucoffee.com/pages/cafe-locations"
        #:location 
          (make-location #:address "1450 Ala Moana Blvd, Level 3, Ewa Wing, Honolulu, HI 96814"                            
                         #:latlon "21.2903, -157.8441")
        #:additional-locations (list
          (make-location #:address "2365 Kalakaua Ave, Honolulu, HI 96815"                            
                         #:latlon "21.2765, -157.8269")
          (make-location #:address "100 Holomoana St, Honolulu, HI 96815"                            
                         #:latlon "21.2861, -157.8404"))
      ]], 
      with locations including the lobbies of the Prince Waikiki and Moana Surfrider hotels. They roast Kona coffee.
    }

    @text{
      Other places near Waikiki, including
      @link-cafe[@make-cafe[
        #:name "Island Vintage Coffee"
        #:url "http://www.islandvintagecoffee.com/"
        #:location 
          (make-location #:address "2301 Kalākaua Ave #C215, Honolulu, HI 96815"                            
                         #:latlon "21.2784, -157.8287")
        #:additional-locations (list
          (make-location #:address "1450 Ala Moana Blvd #1128, Honolulu, HI 96814"                            
                         #:latlon "21.2903, -157.8441")
          (make-location #:address "66-111 Kamehameha Hwy #503, Haleiwa, HI 96712"                            
                         #:latlon "21.5911, -158.1034")
          (make-location #:address "4450 Kapolei Pkwy Building D, Kapolei, HI 96707"
                         #:latlon "21.3291, -158.0914"))
        #:scouting #t
      ]] and
      @link-cafe[@make-cafe[
        #:name "Kona Coffee Purveyors"
        #:url "https://konacoffeepurveyors.com/"
        #:location (make-location #:address "2330 Kalakaua Ave #160 Honolulu, Hawaii, 96815"
                                  #:latlon "21.2783, -157.8261")
        #:scouting #t
      ]], 
      though promising, were too crowded to evaluate properly.
    }))

  @h5[style: "margin-left:5%"]{Hawai'i ("Big Island")}
  @(fmt-paras (list
  @text{
    @link-cafe[@make-cafe[
      #:name "HiCO"
      #:url "https://hicohawaiiancoffee.com/"
      #:location 
        (make-location #:address "74-5599 Pawai Place, Kailua-Kona, HI 96740, United States"
                       #:latlon "19.644, -155.9984")
      #:additional-locations (list
        (make-location #:address "81-6368A Hawai'i Belt Road, Kealakekua, HI 96750"                            
                       #:latlon "19.4993, -155.9194")
        (make-location #:address "68-1845 Waikoloa Rd suite 126, Waikoloa Village, HI 96738"                            
                       #:latlon "19.9273, -155.7878"))
    ]]
    serves Hawai'i (state)-grown coffee from a rotating series of local roasters. This was my favorite cappuccino on the island (but not by much).
  }

  @text{
    @link-cafe[@make-cafe[
      #:name "Kona Coffee and Tea"
      #:url "https://www.konacoffeeandtea.com/"
      #:location (make-location #:address "74-5588 Palani Road, Kailua-Kona, Hawaii  96740"                            
                                #:latlon "19.6451, -155.9946")
    ]]
    roasts and sells Kona coffee. They also sell Hawaii-grown natural wine.
  }

  @text{
    @scouting-report-label 
    Close to South Point, across from the famous 
    @a[href: "https://www.bakeshophawaii.com/"]{Punalu'u Bake Shop}, is 
    @link-cafe[@make-cafe[
      #:name "Ka Lae Coffee"
      #:url "https://kalaecoffee.com"
      #:location (make-location #:address "95-1165 Ka'alaiki Rd, Naalehu, HI 96772"                            
                                #:latlon "19.0614, -155.5868")
      #:scouting #t
    ]],
    which is a promising place for Ka'u coffee, another big coffee growing region on the island.
  }))

  @h5[style: "margin-left:5%"]{Kaua'i}
  @(fmt-paras (list
  @text{
    @link-cafe[@make-cafe[
      #:name "Java Kai"
      #:url "https://javakai.com/pages/menu"
      #:location (make-location #:address "4-1384 Kuhio Hwy, Kapaʻa, HI 96746"                            
                                #:latlon "22.0764, -159.3179")
    ]],
    in Kapa'a, is the best cappuccino on the island (but I prefer their cafe latte). 
    You might also be interested in the @a[href: "https://kauaicoffee.com/visit-the-kauai-coffee-estate/"]{Kaua'i Coffee Plantation}, but they serve only drip coffee.
  }))
})
