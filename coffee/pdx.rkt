#lang scribble/html

@require["util.rkt" "preamble.rkt"]

@provide[pdx]

@(define (pdx make-cafe) (list
  @text{
    @link-cafe[@make-cafe[
      #:name "Stumptown"
      #:url "https://www.stumptowncoffee.com/pages/locations"
      #:location (make-location #:address "128 SW 3rd Ave, Portland, OR 97204"
                                #:latlon "45.5217, -122.6733")
      #:additional-locations (list
        (make-location #:address "4525 SE Division St, Portland, OR 97206"
                       #:latlon "45.5054, -122.6156")
        (make-location #:address "3356 SE Belmont St, Portland, OR 97214"
                       #:latlon "45.5163, -122.6297")
        (make-location #:address "Gate B3, Portland International Airport"
                       #:latlon "45.5880, -122.5944"
                       #:show #f))
    ]]
    is probably the most famous Portland coffee, with locations in not only Portland, but also New York, LA, and Kyoto.
  }

  @text{
    @link-cafe[@make-cafe[
      #:name "Oblique"
      #:url "https://obliquecoffeeroasters.com/"
      #:location (make-location #:address "3039 SE Stark St, Portland, OR 97214"
                                #:latlon "45.5195, -122.6341")
    ]]
    is located in an old Victorian warehouse, in accordance with the Portland aesthetic.
  }

  @text{
    @scouting-report-label Shoumik and Paroma recommend
    @link-cafe[@make-cafe[
      #:name "Case Study Coffee"
      #:url "https://www.casestudycoffee.com/pages/locations"
      #:location (make-location #:address "5347 NE Sandy Blvd, Portland, OR 97213"
                                #:latlon "45.541, -122.608")
      #:additional-locations (list
        (make-location #:address "802 SW 10th Ave, Portland, OR 97205"
                       #:latlon "45.5192, -122.6823")
        (make-location #:address "1400 NW 23rd Ave, Portland, OR 97210"
                       #:latlon "45.5328, -122.6985")
        (make-location #:address "1855 SW Broadway (PSU), Portland, OR 97201"
                       #:latlon "45.5112, -122.6843")
        (make-location #:address "1422 NE Alberta St, Portland, OR 97211"
                       #:latlon "45.5589, -122.6512"
                       #:show #f))
      #:scouting #t
    ]].
  }))
