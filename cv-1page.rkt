#lang scribble/base

@require[
  racket/list
  racket/string
  scribble/base 
  scribble/core 
  scribble/latex-properties
  (except-in "publications.rkt" doc)
]

@title[#:style (make-style #f (list (make-tex-addition "cv/prefix.tex")))
       #:date ""]{Akshay Narayan}

@(define (exact . items)
  (make-element (make-style "identity" '(exact-chars)) items))

@(define (emph x) (list
  (exact (format "\\emph{~a}" x))))

@(define (bf x) (list
  (exact (format "\\textbf{~a}" x))))

@elem[#:style "input"]{cv/topmattershort.tex}

@(define (latex-publication pub) (list
  @(exact "\\item")
  @(if (empty? (publication-authors-str pub))
    ""
    @(drop-right (flatten (map (lambda (i) (list i ", ")) 
                               (map (lambda (a) (if (eq? a 'me) @bf{Akshay Narayan} a)) 
                                    (publication-authors pub)))) 1)
  )
  @(exact "\\\\")
  @(string-append "``" (publication-title pub) "''")
  @(exact "\\\\")
  @emph{@(publication-venue pub)} @(exact " ") @(exact (number->string (publication-year pub)))))

@(exact "\\section{Selected Publications}")

@(define short-pubs (list "bql" "bundler" "archie-hotnets" "bertha-hotnets" "ccp"))

@(exact "\\begin{itemize}[leftmargin=1cm]")
@(for/list ([p (publications)]
            #:when (member (publication-key p) short-pubs)) 
  (latex-publication p))
@(exact "\\end{itemize}")
