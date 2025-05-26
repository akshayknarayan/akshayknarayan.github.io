#lang scribble/html

@require["util.rkt" "preamble.rkt"]

@provide[chicago]

@(define (chicago make-cafe)
  @(list
  @text{
  @link-cafe[@make-cafe[
    #:name "Intelligentsia"
    #:url "https://www.intelligentsia.com/pages/locations"
    #:location (make-location #:address "53 East Randolph St. Chicago, IL 60601"
                              #:latlon "41.8844, -87.6259")
    #:additional-locations (list
      (make-location #:address "3123 N Broadway Chicago, IL 60657"
                     #:latlon "41.9383, -87.6442"
                     #:show #f)
      (make-location #:address "53 West Jackson Blvd. Chicago, IL 60604"
                     #:latlon "41.8775, -87.6296"))
  ]]
  is from Chicago and has multiple locations there, including in the Loop, in addition to a few others around the US. 
  }

  @text{
  @link-cafe[@make-cafe[
    #:name "Metric"
    #:url "https://metriccoffee.com/pages/cafe"
    #:location (make-location #:address "2021 W Fulton St Chicago, IL 60612"
                              #:latlon "41.8866, -87.6777")
  ]]
  is a good option further west.
  }

  @text{
  @link-cafe[@make-cafe[
    #:name "Sparrow"
    #:url "https://sparrowcoffee.com/"
    #:location (make-location #:address "120 Water St. #110, Naperville, IL 60540"
                              #:latlon "41.7709, -88.1506"
                              #:show #f)
  ]]
  is a good option in Naperville.
  }

  @text{
  @scouting-report-label Gavin recommends 
  <a href="https://www.darkmattercoffee.com/">Dark Matter Coffee</a>.
  @link-cafe[@make-cafe[
    #:name "Dark Matter Coffee"
    #:url "https://www.darkmattercoffee.com/"
    #:location (make-location #:address "738 N Western Ave, Chicago, IL 60612"
                              #:latlon "41.895, -87.6871")
    #:additional-locations (list
      (make-location #:address "2521 W Chicago Ave, Chicago, IL 60622"
                     #:latlon "41.8955, -87.6902")
      (make-location #:address "1856 N Western Ave, Chicago, IL 60647"
                     #:latlon "41.9156, -87.6877")
      (make-location #:address "601 W Jackson Blvd, Chicago, IL 60661"
                     #:latlon "41.8778, -87.643")
      (make-location #:address "2015 W Grand Ave, Chicago, IL 60612"
                     #:latlon "41.8907, -87.6772")
      (make-location #:address "1844 S Blue Island Ave, Chicago, IL 60608"
                     #:latlon "41.8568, -87.6624")
      (make-location #:address "2901 W Belmont Ave, Chicago, IL 60618"
                     #:latlon "41.9392, -87.7005"
                     #:show #f)
      (make-location #:address "1117 W Belmont Ave, Chicago, IL 60657"
                     #:latlon "41.9397, -87.6573"
                     #:show #f)
      )
    #:scouting #t
  ]].
  }))
