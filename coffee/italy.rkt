#lang scribble/html

@require["util.rkt"]

@provide[italy]

@(define (italy make-cafe)
  @div{
    @p{Note: Italian coffee culture is somewhat different than the other places on this page. For example, Italians don't drink heated-milk drinks such as cappucinos after 11:00. 
      Also, the standard price one should expect for an espresso is €1, and a cappuccino should be €1.50 (this is when standing at the bar; 
      table service is more expensive). 
      If the place is charging more than this, you either have no other option or are rich (airports, fancy hotels, etc).
    }

    @p{As a result, my recommendation is a cappuccino in the morning and a cafe macchiato (espresso with a bit of foamy milk) in the afternoon. 
      Italian espresso is much more drinkable than most other places on this list, so this plan wasn't an issue for me. 
      You can still request milk drinks in the afternoon, but be prepared for some eye-rolling. 
    }

    @p{Also, I have only listed the places that especially stood out to me in some way. It is in almost all cases perfectly fine to walk into an arbitrary "caffetteria" for coffee.
    }
            
    @p{Now, my actual recommendations:}

    @(fmt-paras (list
      @text{
        In Milan, I enjoyed "La Caffetteria" ("coffee shop") at 
        @link-cafe[@make-cafe[
          #:name "Mercato Centrale"
          #:url "https://www.mercatocentrale.it/milano/"
          #:location (make-location #:address "Via Sammartini, angolo Piazza Quattro Novembre 20125 Milano"
                                    #:latlon "45.4867, 9.2034")
        ]]
        which is attached to Milano Centrale railway station. 
        They also have good @a[href: "https://en.wikipedia.org/wiki/Cream_bun"]{"Maritozzi"}.
      }
                    
      @text{
        In Florence, I liked 
        @link-cafe[@make-cafe[
          #:name "Cafe Gilli"
          #:url "https://www.caffegilli.com/"
          #:location (make-location #:address "Via Roma 1/R - 50123 Firenze"
                                    #:latlon "43.7719, 11.2543")

        ]]
        which is an existence proof that even fancy cafes ("since 1733") adhere to standard Italian espresso pricing.
      }))
  })
