#lang scribble/html

@require["util.rkt" "preamble.rkt"]

@provide[india]

@(define (india make-cafe)
  @div{
    @p[class: "ul-aligned-para"]{
      Note: Indians mostly drink filter coffee. You can get this basically anywhere, so this list focuses on fancier and more westernized (i.e., cappuccino) places.
    }

    @h3[style: "margin-left:5%"]{Chennai}
    @(fmt-paras (list
      @text{
        @link-cafe[@make-cafe[
          #:name "Backyard"
          #:url "http://www.thebackyardclan.com/"
          #:location 
            (make-location #:address "53/23, Backyard, Salem House, 3rd Main Road, Gandhi Nagar, Adyar, Chennai, India"                            
                           #:latlon "13.0085, 80.2526")
        ]] 
        in Gandhi Nagar is a co-working space which includes unlimited filter coffee and chai.
      }

      @text{
        @scouting-report-label Shriram recommends 
        @link-cafe[@make-cafe[
          #:name "Beachville Coffee"
          #:url "https://beachvillecoffee.com/"
          #:location 
            (make-location #:address "99, Vidya Theertha Nagar, St. Mary's Road, Alwarpet, Chennai, Tamil Nadu 600018"                            
                           #:latlon "13.0291, 80.2555")
        ]]
        in Alwarpet.
      }))
    
    @h3[style: "margin-left:5%"]{Mumbai}
    @(fmt-paras (list
    @text{
      @link-cafe[@make-cafe[
        #:name "KC Roasters"
        #:url "https://kcroasters.com/pages/visit"
        #:location 
          (make-location #:address "6, Chuim Village Rd, Khar, Chuim Village, Danda, Khar West, Mumbai, Maharashtra 400052, India"                            
                         #:latlon "19.0732, 72.8264")
      ]] 
      in Bandra is the best cappuccino I have had in Mumbai.
    }

    @text{
      @link-cafe[@make-cafe[
        #:name "Blue Tokai"
        #:url "https://bluetokaicoffee.com"
        #:location (make-location #:address "Shop No 1, Mayflower Building, 33, New Kant Wadi Lane, Perry Cross Rd, Bandra West, Mumbai, Maharashtra 400050, India"                            
                                  #:latlon "19.0604, 72.8243")
        #:additional-locations (list
          (make-location #:address "Unit No 25 & 26, Ground Floor, Commercial Center, CR2, Nariman Point, Mumbai, Maharashtra 400020, India"
                         #:latlon "18.9264, 72.8226"))
      ]] 
      is a good default option, with cafes in a few cities around India. There are six Mumbai locations.
    }

    @text{
      In Kala Ghoda, 
      @link-cafe[@make-cafe[
        #:name "Kala Ghoda Cafe"
        #:url "http://kgcafe.in/"
        #:location (make-location #:address "10, Rope Walk Ln, Kala Ghoda, Fort, Mumbai, Maharashtra 400001, India"                            
                                  #:latlon "18.9285, 72.8323")
      ]] 
      has good lunch options as well as coffee.
    }))
  })
