#lang racket/base

(require
  racket/string
  racket/list
  (except-in "publications.rkt" doc)
)

(define (bibtex publication)
  (string-join (list
    "@inproceedings{" (publication-key publication) ",\n"
    "title = {{" (publication-title publication) "}},\n"
    "author = {" (string-join (publication-authors-str publication) " and ") "},\n"
    "year = {" (number->string (publication-year publication)) "},\n"
    "booktitle = {" (publication-venue publication) "},\n"
    "doi = {" (publication-doi publication) "},\n"
    "}\n"
  ))
)

(if (> (vector-length (current-command-line-arguments)) 0)
  (let ([bibfile (open-output-file (vector-ref (current-command-line-arguments) 0) #:exists 'truncate)])
    (for ([p (publications)]) (display (bibtex p) bibfile))
    (close-output-port bibfile)
    )
  (for ([p (publications)]) (display (bibtex p)))
  )
