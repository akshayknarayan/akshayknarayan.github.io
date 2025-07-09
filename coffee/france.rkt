#lang scribble/html

@require["util.rkt" "preamble.rkt"]

@provide[paris]

@(define (paris make-cafe) @div{
  @(fmt-paras (list
    @text{
      @link-cafe[@make-cafe[
        #:name "I.O Cafe"
        #:url "https://www.bunastories.com/specialty-coffees/io-cafe"
        #:location (make-location #:address "16 Rue Dupetit-Thouars, 75003 Paris, France" #:latlon "48.8656, 2.3615")
      ]] 
      in Le Marais uses beans from @a[href: "https://lacabra.com/"]{La Cabra}.
    }

    @text{
      The "Paris-Tokyo" fashion brand 
      @a[href: "https://maisonkitsune.com"]{Maison Kitsuné}
      has surprisingly good coffee, sometimes attached to their clothing stores and sometimes separate.
      There are three 
      @link-cafe[@make-cafe[
        #:name "Café Kitsuné"
        #:url "https://maisonkitsune.com/us/storelocator/?filters=cafe"
        #:location (make-location #:address "2 Place André Malraux 75001 Paris" #:latlon "48.864, 2.3357")
        #:additional-locations (list
          (make-location #:address "30 rue du Vertbois 75003 Paris" #:latlon "48.867, 2.3584")
          (make-location #:address "51 Galerie de Montpensier 75001 Paris" #:latlon "48.8656, 2.3374"))
      ]] locations in Paris.
    }

    @text{
      In Nice (FR), 
      @link-cafe[@make-cafe[
        #:name "Alvin's Café"
        #:url "https://www.instagram.com/alvins_cafe/"
        #:location (make-location #:address "25 Rue François Guisol, 06300 Nice, France" #:latlon "43.7004, 7.2842" #:show #f)
      ]] is good.
    }

    @text{
      @scouting-report-label Gavin recommends
      @link-cafe[@make-cafe[
        #:name "La Caféothèque"
        #:url "https://www.lacafeotheque.fr/"
        #:location (make-location #:address "52 Rue de l'Hôtel de ville, 75004 Paris, France"
                                  #:latlon "48.8544, 2.3558")
        #:scouting #t
      ]]. 
    }
  ))
})
