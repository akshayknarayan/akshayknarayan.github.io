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
      @ny]
@city[#:name "Seattle"
      #:abbrv "sea"
      @seattle]
@city[#:name "Australia/New Zealand"
      #:abbrv "anz"
      @anz]
}}
