#lang scribble/html

@require["util.rkt"]

@provide[socal]

@(define (socal make-cafe)
  (let* ([
    saffronandrose
    @make-cafe[
      #:name "Saffron and Rose"
      #:url "https://saffronrosepersianicecream.com/"
      #:location (make-location #:address "1387 Westwood Blvd. Los Angeles, CA, 90024" 
                                #:latlon "34.0554, -118.4421")
      #:additional-locations (list
        (make-location #:address "4523 Campus Dr. Irvine, CA, 92612"
                       #:latlon "33.6495258, -117.8322999"))
      ]])
    (list
    @text{
      In UCLA/Westwood,
      @link-cafe[@make-cafe[
        #:name "Espresso Profeta"
        #:url "https://www.espressoprofetalosangeles.com/"
        #:location (make-location #:address "1129 Glendon Avenue Los Angeles, CA 90024" 
                                  #:latlon "34.0604, -118.4442")
      ]] is a good option.
      @link-cafe[saffronandrose] is a good ice cream place nearby.
    }

    @text{
      In Irvine, 
      @link-cafe[@make-cafe[
        #:name "Cassel Earth Coffee"
        #:url "https://www.yelp.com/biz/cassel-earth-coffee-irvine-2"
        #:location (make-location #:address "19100 Von Karman Ave Ste 120 Irvine, CA 92612" 
                                  #:latlon "33.6705, -117.8573")
      ]]
      is in the atrium of an office building that is itself called "The Atrium".
      There's also the other location of @link-cafe[saffronandrose].
    }

    @text{
      In Fullerton, 
      @link-cafe[@make-cafe[
        #:name "Fullerton"
        #:url "https://dripp.coffee"
        #:location (make-location #:address "500 N Harbor Boulevard, Fullerton, CA 92832 USA " 
                                  #:latlon "33.8740, -117.9242")
      ]]
      is good, but expensive.
    }

    @text{
      In the San Diego area,
      @link-cafe[@make-cafe[
        #:name "Lofty"
        #:url "https://loftycoffee.com/"
        #:location (make-location #:address "444 W Cedar St, San Diego, CA 92101" 
                                  #:latlon "32.7221, -117.1673")
        #:additional-locations (list
          ; Encinitas
          (make-location #:address "90 N Coast Hwy 101 STE 214, Encinitas, CA 92024"
                         #:latlon "33.0497, -117.2942")
          ; Carlsbad
          (make-location #:address "2742 State St, Carlsbad, CA 92008"
                         #:latlon "33.1620, -117.3503")
          ; Solana Beach
          (make-location #:address "132 S Cedros Ave, Solana Beach, CA 92075"
                         #:latlon "32.9915, -117.2704")
          ; La Costa
          (make-location #:address "7740 El Camino Real Unit A, Carlsbad, CA 92009"
                         #:latlon "33.0822, -117.2664"))
      ]] and 
      @link-cafe[@make-cafe[
        #:name "Bird Rock"
        #:url "https://www.birdrockcoffee.com/"
        #:location (make-location #:address "2295 Kettner Blvd, San Diego, CA 92101" 
                                  #:latlon "32.7280, -117.1709")
        #:additional-locations (list
          (make-location #:address "2401 Truxtun Rd Suite 101, San Diego, CA 92106"
                         #:latlon "32.7361, -117.2174")
          (make-location #:address "5627 La Jolla Blvd, La Jolla, CA 92037"                            
                         #:latlon "32.8369, -117.2782")
          (make-location #:address "1420 Kettner Blvd, San Diego, CA 92101"                            
                         #:latlon "32.7202, -117.1696")
          (make-location #:address "1270 Morena Blvd, San Diego, CA 92110"                            
                         #:latlon "32.771, -117.2019")
          (make-location #:address "2212 Carmel Valley Rd, Del Mar, CA 92014"                            
                         #:latlon "32.9395, -117.2589")
          (make-location #:address "2656 Gateway Rd, Suite 150, Carlsbad, CA 92009"                            
                         #:latlon "33.1282, -117.2538")
          (make-location #:address "947 S Coast Highway 101, Suite D101, Encinitas, CA 92024"                            
                         #:latlon "33.0401, -117.2929")
          (make-location #:address "9500 Gilman Dr, La Jolla, CA 92093"                            
                         #:latlon "32.8792, -117.2311")
          (make-location #:address "8980 Villa La Jolla Dr, La Jolla, CA 92037"                            
                         #:latlon "32.8709, -117.2352"))
      ]]
      are good options with various area locations. 
      Also in the area is 
      @link-cafe[@make-cafe[
        #:name "Prager Brothers"
        #:url "https://www.pragerbrothers.com/"
        #:location (make-location #:address "5611 Palmer Way, Suite C, Carlsbad, CA 92010"
                                  #:latlon "33.1405, -117.2732")
        #:additional-locations (list
          (make-location #:address "543 S Coast Highway, Encinitas, CA 92024"                            
                         #:latlon "33.0454, -117.2936")
          (make-location #:address "1252 University Avenue, San Diego, CA 92103"                            
                         #:latlon "32.7487, -117.152"))
      ]]
      bakery.
    })))
