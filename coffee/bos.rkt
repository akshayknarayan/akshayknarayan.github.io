#lang scribble/html

@require["util.rkt"]

@provide[bos]

@(define (bos make-cafe)
  (let* ([
    pavement @make-cafe[
      #:name "Pavement"
      #:url "https://pavementcoffeehouse.com/"
      #:location (make-location #:address "286 Newbury Street Boston MA 02115" 
                                #:latlon "42.3490, -71.0845")
      #:additional-locations (list
        (make-location #:address "1096 Boylston St, Boston, MA 02215"
                       #:latlon "42.3468, -71.0884")
        (make-location #:address "1334 Boylston St, Boston, MA 02215"
                       #:latlon "42.3442, -71.0983")
        (make-location #:address "44 Gainsborough St, Boston, MA 02115"
                       #:latlon "42.3417, -71.0870")
        (make-location #:address "1350 Massachusetts Ave, Cambridge, MA 02138"
                       #:latlon "42.3726, -71.1187")
      )
    ]])
  (list
  @text{
    @link-cafe[@make-cafe[
      #:name "Ogawa Coffee"
      #:url "https://www.ogawacoffeeusa.com/"
      #:location (make-location #:address "10 Milk Street, Boston, MA 02108" 
                                #:latlon "42.3568, -71.0581")
    ]]
    is the best Boston cappuccino I've had thus far (as an added bonus, the baristas make elaborate latte art designs).
    @link-cafe[@make-cafe[
      #:name "George Howell Coffee"
      #:url "http://www.georgehowellcoffee.com/the-godfrey-hotel/"
      #:location (make-location #:address "505 Washington Street, Boston, MA" 
                                #:latlon "42.3547, -71.0614")
      #:additional-locations (list
        (make-location #:address "100 Hanover Street Haymarket Station Boston, MA"
                       #:latlon "42.3620, -71.0576"))
    ]]
    is also great: the flavor is well balanced, and the baristas pour excellently. 
  }
  @text{
    @link-cafe[@make-cafe[
      #:name "Bakey"
      #:url "https://bakeybabka.com/"
      #:location (make-location #:address "151 Tremont Street, Boston, MA 02111" 
                                #:latlon "42.3545, -71.0635")
      #:additional-locations (list
        (make-location #:address "238 Main Street, Cambridge, MA 02142"
                       #:latlon "42.3617, -71.0848"))
    ]] 
    is a bakery + coffee shop. They have great pastries, especially babka ("Ovens Always On"), but their coffee is a first-class part of the shop (their roaster is Seattle's @a[href: "https://caffeumbria.com/pages/our-cafes"]{Caffe Umbria}).
  }

  @text{
    @link-cafe[@make-cafe[
      #:name "Barismo"
      #:url "http://www.barismo.com/"
      #:location (make-location #:address "364 Broadway, Cambridge MA 02139" 
                                #:latlon "42.3705, -71.1042")
    ]]
    and 
    @link-cafe[@make-cafe[
      #:name "Broadsheet"
      #:url "https://www.broadsheetcoffee.com/"
      #:location (make-location #:address "100 Kirkland St., Cambridge, MA 02138" 
                                #:latlon "42.3780, -71.1073")
    ]] 
    are good options in Cambridge. 
    @link-cafe[@make-cafe[
      #:name "Curio"
      #:url "https://noobiwankenoobi.github.io/"
      #:location (make-location #:address "441 Cambridge St.  Cambridge, MA 02141" 
                                #:latlon "42.3716, -71.0835")
    ]]
    in East Cambridge has not just good coffee, but also excellent liege-style waffles. 
    @link-cafe[@make-cafe[
      #:name "Elmendorf"
      #:url "http://www.elmendorfbaking.com/"
      #:location (make-location #:address "594 Cambridge St, Cambridge, MA 02141" 
                                #:latlon "42.3718, -71.0864")
    ]]
    nearby is a good bakery and baking materials supply shop (but Curio's coffee is better).
  }

  @text{
    @link-cafe[@make-cafe[
      #:name "Area Four"
      #:url "https://www.areafour.com/location/area-four-a4-cafe/"
      #:location (make-location #:address "500 Technology Square, Cambridge, MA 02139" 
                                #:latlon "42.3630, -71.0925")
    ]]
    and
    @link-cafe[@make-cafe[
      #:name "Vester"
      #:url "https://www.vestercafe.com/"
      #:location (make-location #:address "73 Ames St. Cambridge, MA 02142" 
                                #:latlon "42.3632, -71.0882")
    ]]
    are good options near the Stata Center.
  }
 
  @text{
    @link-cafe[pavement] is a good option if you're in Back Bay (there is now also a Pavement @link-cafe[pavement "location" (list #t (compose1 fourth cafe-additional-locations))] in Harvard Square, in the student center). 
    @link-cafe[@make-cafe[
      #:name "Flat Black"
      #:url "https://flatblackcoffee.com/"
      #:location (make-location #:address "1170 Washington St, Dorchester Center, MA 02124" 
                                #:latlon "42.2724, -71.0684"
                                #:show #f)
    ]]
    is operated by Australians and thus has flat whites (the one near Downtown did not survive the pandemic; the remaining cafe is close to the Red Line's Mattapan Trolley extension near Ashmont).
  })))
