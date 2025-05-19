#lang scribble/html
@require[
  scribble/html
  racket/string
  racket/set
  "util.rkt"
  "preamble.rkt"
  "pvd.rkt"
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
@pvd
}}
