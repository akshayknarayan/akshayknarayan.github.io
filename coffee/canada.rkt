#lang scribble/html

@require["util.rkt" "preamble.rkt"]

@provide[montreal toronto vancouver]

@(define (montreal make-cafe)
  (list 
    @text{
      @link-cafe[@make-cafe[
        #:name "My Little Cup"
        #:url "https://www.mylittlecupcoffee.com/"
        #:location (make-location #:address "dans la station du metro mcgill, 2055 Blvd Robert-Bourassa, Montréal, QC H3A 1J9, Canada"
                                  #:latlon "45.5045, -73.5722")
      ]]
      is inside the McGill metro station (where else in North America will you find this nice a cafe inside a metro station??).
    }

    @text{
      @link-cafe[@make-cafe[
        #:name "Crew Collective"
        #:url "https://www.crewcollectivecafe.com/"
        #:location (make-location #:address "360 Rue Saint-Jacques, Montréal, QC H2Y 1P5, Canada"
                                  #:latlon "45.5023, -73.5594")
      ]]
      is a cafe located within an old bank building. It's also a coworking space.
    }

    @text{
      @scouting-report-label In Quebec City, Deepti recommends 
      @link-cafe[@make-cafe[
        #:name "Cafe Olive"
        #:url "https://www.instagram.com/cafeolivequebec/"
        #:location (make-location #:address "1190-A Av. Cartier, Québec, QC G1R 2S7, Canada"
                                  #:latlon "46.8032, -71.2253"
                                  #:show #f)
      ]].
    }))

@(define (toronto make-cafe)
  (list 
    @text{
      @link-cafe[@make-cafe[
        #:name "Dineen Coffee Co"
        #:url "https://www.dineencoffee.com/"
        #:location (make-location #:address "140 Yonge Street, Toronto, ON M5C 1X6"
                                  #:latlon "43.6511, -79.3791")
        #:additional-locations (list
          (make-location #:address "199 Bay Street, Commerce Court West Lobby, Toronto, ON M5L 1G5"
                         #:latlon "43.6482, -79.3795")
          (make-location #:address "1042 Gerrard Street East, Toronto, ON M4M 1Z5"
                         #:latlon "43.6691, -79.3368")
          (make-location #:address "81 Bay Street, Fourth Floor, Toronto, ON M5J 0E7"
                         #:latlon "43.6442, -79.3774")
          (make-location #:address "311 York Mills Road, North York, ON M2L 1L3"
                         #:latlon "43.7479, -79.3848"
                         #:show #f)
        )
      ]]
      and
      @link-cafe[@make-cafe[
        #:name "Bulldog Coffee"
        #:url "https://bulldogtoronto.ca/"
        #:location (make-location #:address "89 Granby Street, Toronto, ON"
                                  #:latlon "43.6611, -79.3786")
      ]]
      are good options in downtown Toronto. Bulldog offers a (presumably Instagram-optimized) "rainbow latte", which I didn't bother with.
    }))

@(define (vancouver make-cafe)
  (list
    @text{
      @scouting-report-label Rachee and Sagar recommend 
      @link-cafe[@make-cafe[
        #:name "Medina Cafe"
        #:url "https://www.medinacafe.com/"
        #:location (make-location #:address "780 Richards St.  Vancouver, BC V6B 3A4"
                                  #:latlon "49.2806, -123.1169")
        #:scouting #t
      ]].
    }))
