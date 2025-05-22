#lang scribble/html

@require["util.rkt"
         "preamble.rkt"]

@provide[southbay]

@(define (southbay make-cafe)
  @(list
  @text{
    @link-cafe[@make-cafe[
      #:name "Cafe Venetia"
      #:url "https://www.cafevenetia.com/"
      #:address "417 University Avenue Palo Alto, CA 94301"
      #:latlon "37.4475, -122.1604"
    ]]
    is my favorite (coffee is dark-roast Italian style) in Palo Alto, and 
    @link-cafe[@make-cafe[
      #:name "Verve"
      #:url "https://www.vervecoffee.com/"
      #:address "162 University Ave Palo Alto, CA 94301"
      #:latlon "37.4474, -122.1604"
    ]]
    is also good, but by now has many locations.
    @link-cafe[@make-cafe[
      #:name "Manresa Bread"
      #:url "https://www.manresabread.com/"
      #:address "855 El Camino Real, Suite 138 Palo Alto, CA"
      #:latlon "37.4382, -122.1580"
    ]]
    is primarily a bakery, but serves coffee with Verve beans (the Palo Alto Verve cafe similarly has Manresa pastries). On the Cal. Ave. side, 
    @link-cafe[@make-cafe[
      #:name "Backyard Brew"
      #:url "https://backyardbrewpa.com/"
      #:address "444 S. California Ave., Palo Alto, CA 94301"
      #:latlon "37.4261, -122.1454"
    ]]
    is good, especially during a visit to the @a[href: "https://uvfm.org/palo-alto-sundays"]{Cal Ave Farmers Market}. 
    @link-cafe[@make-cafe[
      #:name "Boichik"
      #:url "https://boichikbagels.com/"
      #:address "855 El Camino Real #115, Palo Alto, CA"
      #:latlon "37.4383, -122.1595"
    ]],
    originally from Berkeley, has great bagels which @a[href: "https://www.nytimes.com/2021/03/08/dining/best-bagels.html"]{rival New York's}. Within Stanford, 
    @link-cafe[@make-cafe[
      #:name "Coupa Cafe"
      #:url "https://www.coupacafe.com/locations/"
      #:address "473 Via Ortega Stanford, CA 94305"
      #:latlon "37.4283, -122.1754"
    ]],
    is close to Gates Hall (among other locations both within Stanford and in the broader Bay Area) and decent.
  }

  @text{
    @link-cafe[@make-cafe[
      #:name "Coffeebar"
      #:url "https://www.coffeebar.com/pages/locations#menlo"
      #:address "1149 Chestnut St. Menlo Park, CA 94025"
      #:latlon "37.4521, -122.1856"
    ]]
    and 
    @link-cafe[@make-cafe[
      #:name "Saint Frank"
      #:url "https://www.saintfrankcoffee.com/pages/our-locations"
      #:address "1018 Alma St, Menlo Park, CA 94025"
      #:latlon "37.4547, -122.1816"
    ]], 
    in nearby Menlo Park, are also great options. Saint Frank has locations in SF as well.
  }

  @text{
    @link-cafe[@make-cafe[
      #:name "Backhaus"
      #:url "http://backhausbread.com/"
      #:address "32 3rd Avenue, San Mateo, CA 94401"
      #:latlon "37.5634, -122.3252"
      #:show #f
    ]],
    in San Mateo has good bread and bakery items in addition to coffee.
  }

  @text{
    @link-cafe[@make-cafe[
      #:name "Red Rock Coffee"
      #:url "https://www.redrockcoffee.org/"
      #:address "201 Castro Street, Mountain View, CA 94041"
      #:latlon "37.4164, -122.0976"
    ]]
    is my favorite in Mountain View. 
    @link-cafe[@make-cafe[
      #:name "Midwife and Baker"
      #:url "https://www.themidwifeandthebaker.com/"
      #:address "846 Independence Ave, Mountain View, CA 94043"
      #:latlon "37.4164, -122.0976"
    ]], 
    a bakery that supplies many Bay Area cafes with great pastries, used to have coffee before the city shut it down, and now (I think) hosts a rotating set of coffee pop-ups (contact me if you know more). 
    @link-cafe[@make-cafe[
      #:name "Voyager"
      #:url "https://www.voyagercraftcoffeeorders.com"
      #:address "20807 Stevens Creek Blvd # 200, Cupertino, CA 95014"
      #:latlon "37.3231, -122.0383"
      #:show #f
    ]]
    is a good (though often crowded) option in Cupertino, with a few other South Bay locations as well.
  }

  @text{
    @link-cafe[@make-cafe[
      #:name "Devout"
      #:url "https://www.devoutcoffee.com/"
      #:address "37323 Niles Blvd., Fremont, CA, 94536"
      #:latlon "37.5600, -122.0006"
      #:show #f
    ]]
    is a decent option in Fremont.
  }))
