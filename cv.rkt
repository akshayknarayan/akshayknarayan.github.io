#lang scribble/report

@require[
  racket/list
  scribble/base 
  scribble/core 
  scribble/latex-properties
  "publications.rkt"
@;  "service.rkt"
]

@title[#:style (make-style #f (list (make-tex-addition "cv/prefix.tex")))]{CV}

@(define (exact . items)
  (make-element (make-style "identity" '(exact-chars)) items))

@(define (emph x) (list
  (exact "\\emph{")
  x
  (exact "}")))

@(define (bf x) (list
  (exact "\\textbf{")
  x
  (exact "}")))

@elem[#:style "input"]{cv/topmatter.tex}

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

@(exact "\\section{Publications}")

@(exact "
\\smallskip
\\begin{adjustwidth}{1cm}{}
{\\footnotesize
Conferences are the primary publication venue in Computer Science.
Author order lists graduate students and post-docs first (ordered by contribution), followed by faculty in no fixed order. Some publications list faculty authors in alphabetical order or order of contribution, others list the lead faculty author last.
}
\\end{adjustwidth}
"
)

@(exact "\\begin{itemize}")
@(for/list ([p (publications)]) (latex-publication p))
@(exact "\\end{itemize}")

@elem[#:style "input"]{cv/teaching.tex}
