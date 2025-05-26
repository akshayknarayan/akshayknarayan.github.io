#lang scribble/html

@require["util.rkt"]

@provide[ams]

@(define (ams make-cafe) (list
  @text{
    @link-cafe[@make-cafe[
      #:name "Coffee District"
      #:url "https://coffeedistrict.nl/"
      #:location (make-location #:address "Olympiaplein 111, 1077 CV Amsterdam, Netherlands"
                                #:latlon "52.3463, 4.8682")
      #:additional-locations (list 
        (make-location #:address "Willemsparkweg 8h, 1071 HD Amsterdam, Netherlands"
                       #:latlon "52.358, 4.8776")
        (make-location #:address "Buitenveldertselaan 98, 1081 AC Amsterdam, Netherlands"
                       #:latlon "52.327, 4.8682")
        (make-location #:address "Overtoom 556, 1054 LK Amsterdam, Netherlands"
                       #:latlon "52.3583, 4.8569"))
    ]]
    was my favorite in Amsterdam.
    Two doors down from the location in Zuid, the bakery 
    @link-cafe[@make-cafe[
      #:name "Le Fournil de Sébastien"
      #:url "https://lefournil.nl/"
      #:location (make-location #:address "Olympiaplein 119 1077 CW Amsterdam"
                                #:latlon "52.3463, 4.8679")
      #:additional-locations (list 
        (make-location #:address "Gijsbrecht van Amstelstraat 131 1214 AW Hilversum"
                       #:latlon "52.2158, 5.1702"
                       #:show #f)
        (make-location #:address "Amsterdamseweg 189 1182 GV Amstelveen"
                       #:latlon "52.3111, 4.8466"))
    ]]
    is also quite nice.
  }))
