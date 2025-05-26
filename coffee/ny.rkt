#lang scribble/html

@require["util.rkt"]
                          
@provide[ny])

@(define (ny make-cafe) (list
  @text{
    In Greenwich Village there is 
    @link-cafe[@make-cafe[
      #:name "La Cabra"
      #:url "https://lacabra.com/pages/locations#newyork"
      #:location (make-location #:address "152 2nd Ave 10003 New York" 
                                #:latlon "40.7295, -73.9869")
    ]],
    a cafe with Danish origins. There is also 
    @link-cafe[@make-cafe[
      #:name "Third Rail"
      #:url "https://www.thirdrailcoffee.com/"
      #:location (make-location #:address "240 Sullivan Street New York, NY 10012" 
                                #:latlon "40.7300, -73.9995")
    ]],
    and 
    @link-cafe[@make-cafe[
      #:name "Unregular Bakery"
      #:url "https://unregularbakery.com/"
      #:location (make-location #:address "124 4th Avenue New York, NY 10003" 
                                #:latlon "40.7331, -73.9901")
    ]].
  }

  @text{
    Near Madison Square Park, 
    @link-cafe[@make-cafe[
      #:name "Stumptown"
      #:url "https://www.stumptowncoffee.com/pages/new-york-ace-hotel-cafe"
      #:location (make-location #:address "18 W 29th Street New York, NY 10001" 
                                #:latlon "40.7331, -73.9901")
    ]]
    is a good option. There is also a 
    @a[href: "https://www.blackseedbagels.com/"]{Black Seed Bagels}
    around the corner.
  }
    
  @text{
    There are a few good cafes with multiple locations throughout the city. Of these, 
    @link-cafe[@make-cafe[
      #:name "Devoción"
      #:url "https://www.devocion.com/pages/cafes"
      #:location (make-location #:address "25 East 20th Street New York, NY 10003" 
                                #:latlon "40.7390, -73.9892")
      #:additional-locations (list
        (make-location #:address "1134 Broadway, New York, NY 10010"           #:latlon  "40.7435, -73.9890")
        (make-location #:address "600 Lexington Ave, New York, NY 10022"       #:latlon  "40.7581, -73.9713")
        (make-location #:address "105 York St. Brooklyn, NY 11201"             #:latlon  "40.7017, -73.9866")
		(make-location #:address "69 Grand St. (at Wythe), Brooklyn, NY 11249" #:latlon  "40.7159, -73.9648")
        (make-location #:address "276 Livingston St. Brooklyn, NY 11201"       #:latlon  "40.6886, -73.9834"))
    ]]
    (specializing in Colombia-origin coffee),
    @link-cafe[@make-cafe[
      #:name "787 Coffee"
      #:url "https://787coffee.com/"
      #:location (make-location #:address "131 East 7th St. New York, NY" 
                                #:latlon "40.7263, -73.9839")
      #:additional-locations (list
        (make-location #:address "101 2nd Ave, New York, NY 10003"          #:latlon "40.7274, -73.9888")
        (make-location #:address "159 2nd Ave, New York, NY 10003"          #:latlon "40.7298, -73.9871")
        (make-location #:address "66 Pearl St, New York, NY 10004"          #:latlon "40.7036, -74.0109")
        (make-location #:address "100 Lexington Ave, New York, NY 10016"    #:latlon "40.7422, -73.9831")
        (make-location #:address "228 E 80th St, New York, NY 10075"        #:latlon "40.7744, -73.9556")
        (make-location #:address "340 E 70th St, New York, NY 10021"        #:latlon "40.7666, -73.9574")
        (make-location #:address "256 W 15th St, New York, NY 10011"        #:latlon "40.7400, -74.0016")
        (make-location #:address "310 W 14th St, New York, NY 10014"        #:latlon "40.7398, -74.0034")
        (make-location #:address "72 Thompson St, New York, NY 10012"       #:latlon "40.7245, -74.0028")
        (make-location #:address "204 W 10th St, New York, NY 10014"        #:latlon "40.7340, -74.0040")
        (make-location #:address "93 Worth St, New York, NY 10013"          #:latlon "40.7166, -74.0049")
        (make-location #:address "251 W 30th St, New York, NY 10001"        #:latlon "40.7495, -73.9943")
        (make-location #:address "245 W 46th St, New York, NY 10036"        #:latlon "40.7590, -73.9858")
        (make-location #:address "60 W 129th St, New York, NY 10027"        #:latlon "40.8101, -73.9433")
        (make-location #:address "401 E 58th St, New York, NY 10022"        #:latlon "40.7590, -73.9621")
        (make-location #:address "595 Metropolitan Ave, Brooklyn, NY 11211" #:latlon "40.7143, -73.9490"))
    ]]
    (in Puerto Rico-origin), 
    @link-cafe[@make-cafe[
      #:name "Felix Roasting Co."
      #:url "https://felixroastingco.com/pages/visit-us"
      #:location (make-location #:address "450 Park Ave S, New York, NY" 
                                #:latlon "40.7263, -73.9839")
      #:additional-locations (list 
        (make-location #:address "280 Park Avenue, New York, NY"  #:latlon "40.7568, -73.9749")
        (make-location #:address "145 Greene St, New York, NY"    #:latlon "40.7261, -73.9987")
        (make-location #:address "525 Greenwich St, New York, NY" #:latlon "40.7264, -74.0089"))
    ]]
    (cafes with interesting art and interior design), and 
    @link-cafe[@make-cafe[
      #:name "Black Fox Coffee"
      #:url "https://blackfoxcoffee.com/pages/locations"
      #:location (make-location #:address "438 West 33rd Street Pendry Hotel Manhattan West New York, NY 10001" 
                                #:latlon "40.7533, -73.9983")
      #:additional-locations (list 
        (make-location #:address "550 Madison Ave, New York, NY"     #:latlon "40.7613, -73.9738")
        (make-location #:address "70 Pine Street, New York, NY"      #:latlon "40.7065, -74.0078")
        (make-location #:address "45 East 45th Street, New York, NY" #:latlon "40.7546, -73.9773"))
    ]]
    (the ones near Penn Station and Grand Central are likely the best coffee near those stations)
    are notable.
  }

  @text{
    On the Upper West Side, there is 
    @link-cafe[@make-cafe[
      #:name "Black Press Coffee"
      #:url "https://www.blackpresscoffee.com/"
      #:location (make-location #:address "274 Columbus Ave. New York, NY 10023" 
                                #:latlon "40.7780, -73.9786")
    ]].
  }

  @text{
    In Brooklyn (Dumbo), 
    @link-cafe[@make-cafe[
      #:name "Butler"
      #:url "https://www.butler-nyc.com/"
      #:location (make-location #:address "40 Water St, Brooklyn, NY 11201" 
                                #:latlon "40.7032, -73.9924")
      #:additional-locations (list 
        (make-location #:address "177 Lafayette St New York, NY 10013"    #:latlon "40.7204, -73.9985")
        (make-location #:address "95 South 5th Street Brooklyn, NY 11249" #:latlon "40.7117, -73.9646")
        (make-location #:address "101 North 8th St Brooklyn, NY 11211"    #:latlon "40.7198, -73.9591"))
    ]]
    is good, serving @a[href: "https://www.intelligentsia.com/"]{Intelligentsia} beans. In Williamsburg, 
    @link-cafe[@make-cafe[
      #:name "Lion's Milk"
      #:url "https://www.lionsmilkbk.com/"
      #:location (make-location #:address "104 Roebling Street Brooklyn, New York, 11211" 
                                #:latlon "40.7159, -73.9558")
    ]]
    is good.
  }))
