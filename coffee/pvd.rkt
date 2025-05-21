#lang scribble/html

@require["util.rkt"]

@provide[pvd]

@(define (pvd make-cafe)
  @(list
  @text{Near Brown University,
  @link-cafe[@make-cafe[
    #:name "Bolt Coffee"
    #:url "https://www.boltcoffeeco.com/"
    #:address "224 Benefit St, Providence, RI 02903"
    #:latlon "41.8269, -71.4075"
  ]]
  inside the RISD Museum is nice.
  @link-cafe[@make-cafe[
    #:name "Ceremony"
    #:url "http://www.ceremonypvd.com/onlineorder"
    #:address "406 Brook Street, Providence, RI 02906"
    #:latlon "41.8287, -71.3996"
  ]]
  is also good, though it is primarily tea-focused.}

  @text{
  @link-cafe[@make-cafe[
        #:name "Coffee Exchange"
        #:url "https://www.thecoffeeexchange.com/"
        #:address "207 Wickenden St.  Providence, RI 02903"
        #:latlon "41.8194, -71.3991"
  ]] on Wickenden St. is a great local roaster and has an extensive selection of beans. I recommend their light roast espresso. Nearby,
  @link-cafe[@make-cafe[
        #:name "Brown Bee Coffee"
        #:url"https://www.brownbeecoffee.com/"
        #:address "404 Benefit Street, Providence RI 02903"
        #:latlon "41.8203, -71.4017"
  ]] is a promising newcomer with a strong pastry program.}

  @text{
  @link-cafe[@make-cafe[
        #:name "Small Point Cafe"
        #:url "http://smallpointcafe.com/"
        #:address "230 Westminster Street Providence, RI 02903"
        #:latlon "41.8230, -71.4125"
  ]] is a good option downtown. There are also two other Bolt locations in downtown Providence.}

  @text{
  @link-cafe[@make-cafe[
        #:name "Seven Stars Bakery"
        #:url "https://sevenstarsbakery.com/"
        #:address "103 Point St, Providence, RI"
        #:latlon "41.8165, -71.4076"
  ]] has George Howell Coffee and also good pastries, bread, etc.}
  ))
