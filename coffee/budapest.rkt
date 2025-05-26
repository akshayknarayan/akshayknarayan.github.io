#lang scribble/html

@require["util.rkt" "preamble.rkt"]

@provide[budapest]

@(define (budapest make-cafe) (list 
  @text{
    @link-cafe[@make-cafe[
      #:name "Fekete"
      #:url "https://feketekv.hu/"
      #:location (make-location #:address "Budapest, Múzeum krt. 5, 1053 Hungary"
                                #:latlon "47.4936, 19.0601")
    ]]
    has a great interior courtyard to sit in, and they serve brunch.
    There's also
    @link-cafe[@make-cafe[
      #:name "Langos Bistro"
      #:url "https://langosbistro.com/"
      #:location (make-location #:address "1072 Budapest Rákóczi út 4."
                                #:latlon "47.4947, 19.0607")
    ]]
    (@a[href: "https://en.wikipedia.org/wiki/L%C3%A1ngos"]{Langos} is a Hungarian street food)
    right around the corner.
  }

  @text{
    @link-cafe[@make-cafe[
      #:name "Arioso"
      #:url "https://www.arioso.hu/en/cafe-garden#cafe"
      #:location (make-location #:address "1075 Budapest, Király utca 9."
                                #:latlon "47.4987, 19.0576")
    ]]
    is colocated with an interior decorations store and flower shop. 
  }

  @text{
    @scouting-report-label Shriram recommends 
    @link-cafe[@make-cafe[
      #:name "Cafe Gerbaud"
      #:url "https://gerbeaud.hu/en/"
      #:location (make-location #:address "Budapest, Vörösmarty tér 7-8, 1051 Hungary"
                                #:latlon "47.4969, 19.050")
      #:scouting #t
    ]]
    and 
    @link-cafe[@make-cafe[
      #:name "Central Cafe"
      #:url "https://centralgrandcafe.hu/en/"
      #:location (make-location #:address "1053 Budapest, Károlyi utca 9."
                                #:latlon "47.4919, 19.0567")
      #:scouting #t
    ]].
    Both are classic Budapest landmarks.
  }))
