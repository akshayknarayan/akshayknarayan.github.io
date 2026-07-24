#lang scribble/html
@require[
  scribble/html
  racket/string
  racket/set
  "preamble.rkt"
  "util.rkt"
  "ams.rkt"
  "anz.rkt"
  "atl.rkt"
  "austin.rkt"
  "berkeley.rkt"
  "bos.rkt"
  "budapest.rkt"
  "canada.rkt"
  "chicago.rkt"
  "france.rkt"
  "hawaii.rkt"
  "india.rkt"
  "italy.rkt"
  "london.rkt"
  "nhv.rkt"
  "norcal.rkt"
  "ny.rkt"
  "pdx.rkt"
  "philly.rkt"
  "pvd.rkt"
  "rhein-main.rkt"
  "seattle.rkt"
  "sf.rkt"
  "slc.rkt"
  "socal.rkt"
  "southbay.rkt"
  "spain.rkt"
  "zurich.rkt"
]

@(define (style) (list  
  @link[rel:"stylesheet" href:"https://fonts.googleapis.com/css2?family=Recursive:CASL,MONO@0.75,0&display=swap"]
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
  @city[#:name "New Haven"
        #:abbrv "nhv"
        #:mapzoom 14
        @newhaven]
  @city[#:name "Montréal"
        #:abbrv "montreal"
        @montreal]
  @city[#:name "Barcelona"
        #:abbrv "bcn"
        #:mapzoom 13
        @bcn]
  @city[#:name "Madrid"
        #:abbrv "madrid"
        #:mapzoom 14
        @madrid]
  @city[#:name "Andalusia"
        #:abbrv "andalusia"
        #:mapzoom 13
        @andalusia]
  @city[#:name "London"
        #:abbrv "london"
        #:mapzoom 10
        @london]
  @city[#:name "Italy"
        #:abbrv "italy"
        #:mapzoom 7
        @italy]
  @city[#:name "Paris"
        #:abbrv "paris"
        #:mapzoom 12
        @paris]
  @city[#:name "Amsterdam"
        #:abbrv "ams"
        @ams]
  @city[#:name "Germany Rhein-Main Area (incl. Frankfurt)"
        #:abbrv "fra"
        @rhein-main]
  @city[#:name "NorCal (and Southern Oregon)"
        #:abbrv "norcal"
        #:mapzoom 7
        @norcal]
  @city[#:name "SoCal"
        #:abbrv "socal"
        #:mapzoom 9
        @socal]
  @city[#:name "Hawai'i"
        #:abbrv "hawaii"
        #:mapzoom 7
        @hawaii]
  @city[#:name "Australia/New Zealand"
        #:abbrv "anz"
        @anz]
  @city[#:name "Chicago"
        #:abbrv "chicago"
        #:mapzoom 11
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
  @city[#:name "Atlanta"
        #:abbrv "atl"
        @atl]
  @city[#:name "India"
        #:abbrv "india"
        #:mapzoom 6
        @india]
  @city[#:name "Toronto"
        #:abbrv "toronto"
        @toronto]
  @city[#:name "Vancouver"
        #:abbrv "vancouver"
        @vancouver]
  @city[#:name "Budapest"
        #:abbrv "budapest"
        @budapest]
  @city[#:name "Salt Lake City"
        #:abbrv "slc"
        @slc]
  @city[#:name "Zurich"
        #:abbrv "zurich"
        @zurich]
}}
