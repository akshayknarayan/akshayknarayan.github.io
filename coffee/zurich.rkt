#lang scribble/html

@require["util.rkt" "preamble.rkt"]

@provide[zurich]

@(define (zurich make-cafe)
  @div{
    @p{
      @scouting-report-label from our Zürich coffee correspondents, 
      @a[href: "https://gavinleroy.com/writings/zuerich-kaffee.html"]{Gavin} 
      and Albert:
    }

    @(fmt-paras (list @text{
      @link-cafe[@make-cafe[
        #:name "Collective Bakery"
        #:url "https://collectivebakery.ch/"
        #:location (make-location #:address "Förrlibuckstrasse 160, 8005 Zürich"
                                  #:latlon "47.3924, 8.511")
        #:scouting #t
      ]]
      and 
      @link-cafe[@make-cafe[
        #:name "Mame"
        #:url "https://mame.coffee/"
        #:location (make-location #:address "Josefstrasse 160, 8005 Zürich"
                                  #:latlon "47.385, 8.5274")
        #:additional-locations (list
          (make-location #:address "Seefeldstrasse 19, 8008 Zürich"
                         #:latlon "47.3641, 8.5492")
        )
        #:scouting #t
      ]]
      which are both affiliated with former world barista champions.
    }

    @text{
      @link-cafe[@make-cafe[
        #:name "Miró"
        #:url "https://mirocoffee.co/visit-us/"
        #:location (make-location #:address "Brauerstrasse 58 8004 Zürich"
                                  #:latlon "47.3786, 8.5258")
        #:additional-locations (list
          (make-location #:address "Sihlquai 1, 8001 Zürich"
                         #:latlon "47.3796, 8.5375")
        )
        #:scouting #t
      ]]
      a roaster with a cafe, including two in Zurich HbF, and roving coffee carts.
    }

    @text{
      Near ETH, 
      @link-cafe[@make-cafe[
        #:name "Cafe Leonhardstreppe"
        #:url "https://leonhardstreppe.ch/"
        #:location (make-location #:address "Weinbergstrasse 25 8001 Zürich"
                                  #:latlon "47.3788, 8.5439")
        #:scouting #t
      ]]
      Near Google (and Zürich HBF), 
      @link-cafe[@make-cafe[
        #:name "Bean Bank"
        #:url "https://www.beanbank.ch/"
        #:location (make-location #:address "Lagerstrasse 18c, 8004 Zürich, Switzerland"
                                  #:latlon "47.3779, 8.533")
        #:additional-locations (list
          (make-location #:address "Bärengasse 29, 8001 Zürich, Switzerland"
                         #:latlon "47.3693, 8.5366"))
        #:scouting #t
      ]]
      gets an honorable mention from Gavin, but a demerit for being too snobby.
    }))

    @p{Bonus @scouting-report{scouting report} from Gavin for other European cities:}

    @(fmt-paras (list
      @text{
        Bern: 
        @link-cafe[@make-cafe[
          #:name "Drip Roasters"
          #:url "https://driproasters.ch/"
          #:location (make-location #:address "Belpstrasse 69 3007 Bern Switzerland"
                                    #:latlon "46.9418, 7.4312"
                                    #:show #f)
          #:scouting #t
        ]]
      }

      @text{
        Salzburg (Austria): 
        @link-cafe[@make-cafe[
          #:name "Ratio Coffee"
          #:url "https://ratiocoffee.at/"
          #:location (make-location #:address "Linzer G. 72A, 5020 Salzburg, Austria"
                                    #:latlon "47.8044, 13.049"
                                    #:show #f)
          #:scouting #t
        ]], 
        @link-cafe[@make-cafe[
          #:name "Kaffee Alchemie"
          #:url "https://www.kaffee-alchemie.at"
          #:location (make-location #:address "Rudolfskai 38, Salzburg, Austria"
                                    #:latlon "47.7989, 13.0496"
                                    #:show #f)
          #:scouting #t
        ]], 
        and 
        @link-cafe[@make-cafe[
          #:name "Ma Makers"
          #:url "https://maps.app.goo.gl/GXMMM3DRwNZruTFt7"
          #:location (make-location #:address "Kaigasse 26, 5020 Salzburg, Austria"
                                    #:latlon "47.7967, 13.0498"
                                    #:show #f)
          #:scouting #t
        ]].}
      @text{
        Paris (France):
        @link-cafe[@make-cafe[
          #:name "La Caféothèque"
          #:url "https://www.lacafeotheque.fr/"
          #:location (make-location #:address "52 Rue de l'Hôtel de ville, 75004 Paris, France"
                                    #:latlon "48.8544, 2.3558"
                                    #:show #f)
          #:scouting #t
        ]]. 
      }))
  })
