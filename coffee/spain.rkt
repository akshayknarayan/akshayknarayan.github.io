#lang scribble/html

@require["util.rkt" "preamble.rkt"]

@provide[bcn madrid andalusia]

@(define (bcn make-cafe) @div{
  @(fmt-paras (list
    @text{
      @link-cafe[@make-cafe[
        #:name "Nomad Roasters"
        #:url "https://nomadcoffee.es"
        #:location (make-location #:address "Passatge Sert, 12 08003 Barcelona"
                                  #:latlon "41.3889, 2.1772")
        #:additional-locations (list
          (make-location #:address "Carrer de Pujades, 95 08005 Barcelona"
                         #:latlon "41.3979, 2.1956")
          (make-location #:address "Carrer de Bergara, 10, L'Eixample, 08002 Barcelona, Spain"
                         #:latlon "41.3862, 2.1684"))
      ]]
      is the best coffee I had in Barcelona.
      Various cafes use their beans, including
      @link-cafe[@make-cafe[
        #:name "CafeCosmo"
        #:url "http://galeriacosmo.com/"
        #:location (make-location #:address "C/ Enric Granados 3 08007 Barcelona"
                                  #:latlon "41.3875, 2.1626")
      ]],
      which is also an art gallery.
    }

    @text{
      There are also a number of other nice cafes. I liked
      @link-cafe[@make-cafe[
        #:name "Departure Coffee"
        #:url "https://maps.app.goo.gl/UyaCQSxq9LVBJi9L7"
        #:location (make-location #:address "Carrer de la Verge, 1, Ciutat Vella, 08001 Barcelona, Spain"
                                  #:latlon "41.3835, 2.165")
      ]],
      @link-cafe[@make-cafe[
        #:name "Brew Coffee"
        #:url "https://instagram.com/brewcoffeebcn2"
        #:location (make-location #:address "Carrer d'Ausiàs Marc, 4, L'Eixample, 08010 Barcelona, Spain"
                                  #:latlon "41.3899, 2.1738")
      ]], 
      and
      @link-cafe[@make-cafe[
        #:name "Indo"
        #:url "https://indobar.es/"
        #:location (make-location #:address "Carrer del General Álvarez de Castro, 5, Ciutat Vella, 08003 Barcelona, Spain"
                                  #:latlon "41.387, 2.1777")
      ]].
    }

    @text{
      Also, 
      @link-cafe[@make-cafe[
        #:name "Forno Suca'l"
        #:url "https://www.cloudstreet.es/"
        #:location (make-location #:address "Carrer del Rosselló 112 08036 Barcelona"
                                  #:latlon "41.3885, 2.1512")
      ]]
      in the Eixample is a nice little pastry shop.
    }

    @text{
      @scouting-report-label Pratiksha reports
      @link-cafe[@make-cafe[
        #:name "Fresh Roasted Coffee"
        #:url "https://maps.app.goo.gl/gG2MSKPQVLpHE8bR7"
        #:location (make-location #:address "C/ de Muntaner, 170, L'Eixample, 08036 Barcelona, Spain"
                                  #:latlon "41.3918, 2.1528")
        #:scouting #t
      ]]
      is good.
    }))
})


@(define (madrid make-cafe) @div{
    @(fmt-paras (list
      @text{
        In Madrid, 
        @link-cafe[@make-cafe[
          #:name "Martin Tostador"
          #:url "https://martintostador.com/"
          #:location (make-location #:address "Calle del General Lacy, 13, Arganzuela, 28045 Madrid, Spain"
                                    #:latlon "40.4023, -3.6908")
          #:additional-locations (list
            (make-location #:address "C. de Moratines, 23, Arganzuela, 28005 Madrid, Spain"
                           #:latlon "40.4025, -3.7038"))
        ]]
        near Atocha Station and also near Embajadores, is good.
      }
    ))
})

@(define (andalusia make-cafe) @div{
  @(fmt-paras (list
    @text{
    In Sevilla,
    @link-cafe[@make-cafe[
      #:name "Virgen Coffee"
      #:url "https://maps.app.goo.gl/E2cSYAP24Bcc1P8q7"
      #:location (make-location #:address "C. Regina, 1, Casco Antiguo, 41003 Sevilla, Spain"
                                #:latlon "37.3940, -5.9917")
    ]]
    a tiny cafe near the @a[href: "https://en.wikipedia.org/wiki/Metropol_Parasol"]{"Setas de Sevilla"} sculpture, and 
    @link-cafe[@make-cafe[
      #:name "Ofelia Bakery"
      #:url "https://www.ofeliabakery.com/"
      #:location (make-location #:address "C/ Huelva nº5, Sevilla"
                                #:latlon "37.3901, -5.9918")
    ]]
    are both good. Pratiksha recommends
    @link-cafe[@make-cafe[
      #:name "Ringo Banana"
      #:url "https://ringobanana.com/"
      #:location (make-location #:address "C. Alhondiga, 8 – Sevilla"
                                #:latlon "37.3907, -5.9891")
      #:scouting #t
    ]].
    }

    @text{
    In Córdoba, @link-cafe[@make-cafe[
      #:name "Martina Cakes"
      #:url "https://martinacakes.com/"
      #:location (make-location #:address "Av. de Cervantes, 2, Centro, 14008 Córdoba, Spain"
                                #:latlon "37.887, -4.7846"
                                #:show #f)
    ]]
    is good. As the name suggests, they have a selection of cakes in addition to coffee.
    }

    @text{
      @scouting-report-label In Cadiz (Puerto de Santa Maria), Pratiksha recommends
      @link-cafe[@make-cafe[
        #:name "Factoria 77 Coffee Roasters"
        #:url "https://www.factoria77.es/"
        #:location (make-location #:address "Av. Pintor Antonio Fernández Sevilla, 13, 11500 El Puerto de Santa María, Cádiz"
                                  #:latlon "36.5949, -6.2382"
                                  #:show #f)
        #:scouting #t
      ]].
    }))
})
