#lang scribble/html
@require[
  scribble/html
  racket/string
  racket/set
  "preamble.rkt"
  "util.rkt"
  "pvd.rkt"
  "bos.rkt"
  "berkeley.rkt"
  "sf.rkt"
  "southbay.rkt"
  "ny.rkt"
  "seattle.rkt"
  "anz.rkt"
  "norcal.rkt"
  "socal.rkt"
  "nhv.rkt"
  "hawaii.rkt"
  "london.rkt"
  "ams.rkt"
  "rhein-main.rkt"
  "atl.rkt"
  "italy.rkt"
  "spain.rkt"
  "chicago.rkt"
  "pdx.rkt"
  "austin.rkt"
  "philly.rkt"
  "india.rkt"
]

@(define (style) (list  
@link[rel:"stylesheet" href:"https://fonts.googleapis.com/css2?family=Recursive:slnt,CASL,MONO@-1,0.75,0.25&display=swap"]
@link[rel:"stylesheet" href:"main.css"]
@link[rel:"stylesheet" href:"map.css"]
))

@doctype{html}
@html[lang: "en"]{
@head{
@title{Coffee}
@meta[charset: "utf-8"]
@style
}
@body{
@preamble
@city[#:name "Providence"
      #:abbrv "pvd"
      @pvd]
@city[#:name "Boston"
      #:abbrv "bos"
      @bos]
@city[#:name "Berkeley"
      #:abbrv "berkeley"
      @berkeley]
@city[#:name "SF"
      #:abbrv "sf"
      @sf]
@city[#:name "South Bay"
      #:abbrv "southbay"
      @southbay]
@city[#:name "New York"
      #:abbrv "nyc"
      #:mapzoom 12
      @ny]
@city[#:name "Seattle"
      #:abbrv "sea"
      #:mapzoom 11
      @seattle]
@city[#:name "Australia/New Zealand"
      #:abbrv "anz"
      @anz]
@city[#:name "NorCal (and Southern Oregon)"
      #:abbrv "norcal"
      #:mapzoom 7
      @norcal]
@city[#:name "SoCal"
      #:abbrv "socal"
      #:mapzoom 9
      @socal]
@city[#:name "New Haven"
      #:abbrv "nhv"
      #:mapzoom 14
      @newhaven]
@city[#:name "Hawai'i"
      #:abbrv "hawaii"
      #:mapzoom 7
      @hawaii]
@city[#:name "London"
      #:abbrv "london"
      @london]
@city[#:name "Amsterdam"
      #:abbrv "ams"
      @ams]
@city[#:name "Germany Rhein-Main Area (incl. Frankfurt)"
      #:abbrv "fra"
      @rhein-main]
@city[#:name "Atlanta"
      #:abbrv "atl"
      @atl]
@city[#:name "Italy"
      #:abbrv "italy"
      #:mapzoom 7
      @italy]
@city[#:name "Spain"
      #:abbrv "spain"
      #:mapzoom 6
      @spain]
@city[#:name "Chicago"
      #:abbrv "chicago"
      @chicago]
@city[#:name "Portland"
      #:abbrv "pdx"
      @pdx]
@city[#:name "Austin"
      #:abbrv "austin"
      @austin]
@city[#:name "Philadelphia"
      #:abbrv "phl"
      @phl]
@city[#:name "India"
      #:abbrv "india"
      #:mapzoom 6
      @india]
}}
