#lang scribble/html

@require["util.rkt"]

@provide[norcal]

@(define (norcal make-cafe) (list
  @text{
    In Redding,
    @link-cafe[@make-cafe[
      #:name "Theory Coffee Roasters"
      #:url "https://theorycoffee.com/"
      #:location (make-location #:address "1250 California Street Redding, CA 96001" 
                                #:latlon "40.5865, -122.3935")
      #:additional-locations (list
        (make-location #:address "1401 Hilltop Drive Suite E5 Redding, CA 96003"
                       #:latlon "40.5881, -122.3570")
        (make-location #:address "228 N Mt Shasta Blvd, Mount Shasta CA 96067"
                       #:latlon "41.3132, -122.3120"))
    ]] is a good option.
  }

  @text{
    In Crescent City (near the north border of Redwoods National Park), 
    @link-cafe[@make-cafe[
          #:name "Paragon"
          #:url "https://paragoncoffeehouse.com/"
          #:location (make-location #:address "783 3rd St, Crescent City, CA 95531" 
                                    #:latlon "41.7519126, -124.198246")
    ]]
    is good.
  }

  @text{
    @link-cafe[@make-cafe[
          #:name "Forage"
          #:url "http://foragecoffee.co/"
          #:location (make-location #:address "529 E Main St, Medford, OR 97504" 
                                    #:latlon "42.3280, -122.8679")
    ]] is a good option in Medford, OR.
  }))
