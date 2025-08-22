#lang scribble/base

@require[
  racket/list
  racket/string
  scribble/base 
  scribble/core 
  scribble/latex-properties
  (except-in "publications.rkt" doc)
  (except-in "students.rkt" doc)
  (except-in "service.rkt" doc)
]

@title[#:style (make-style #f (list (make-tex-addition "cv/prefix.tex")))
       #:date ""]{Akshay Narayan}

@(define (exact . items)
  (make-element (make-style "identity" '(exact-chars)) items))

@(define (emph x) (list
  (exact (format "\\emph{~a}" x))))

@(define (bf x) (list
  (exact (format "\\textbf{~a}" x))))

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
By convention, author order lists students and post-docs first (ordered by contribution), followed by faculty in no fixed order. Some publications list faculty authors in alphabetical order or order of contribution, others list the lead faculty author last.
}
\\end{adjustwidth}
")

@(exact "\\begin{itemize}[leftmargin=1.5cm]")
@(for/list ([p (publications)]) (latex-publication p))
@(exact "\\end{itemize}")

@elem[#:style "input"]{cv/teaching.tex}

@(exact "\\section{Advising}")

@(define (list-students ss) (list
  @(exact "\\begin{itemize}[leftmargin=1.5cm]\\setlength{\\itemsep}{0pt}")
  @(for/list ([s ss]) (list
    (exact "\\item")
    (exact "\\begin{tabular*}{\\dimexpr \\textwidth -1.5cm}[t]{@{}l@{\\extracolsep{\\fill}}r@{}}")
    (student-name s)
    (if (empty? (student-postgrad-affiliation s)) '() (exact (format " $\\rightarrow$ ~a" (student-postgrad-affiliation s))))
    (exact "& ")
    (emph (student-start-time s)) @(exact " --- ") (if (empty? (student-end-time s)) "" (emph (student-end-time s)))
    (exact "\\\\")
    (if (empty? (student-note s)) '() 
        (exact (format "~a & \\\\" (student-note s))))
    (if (empty? (student-thesis s)) '() 
        (exact (format "Thesis: \\href{~a}{~a} & \\\\" (car (student-thesis s)) (cdr (student-thesis s)))))
    (exact "\\end{tabular*}")))
  @(exact "\\end{itemize}")))

@(exact "\\noindent\\hspace{1cm}")
@bf{M.Sc. research advisor}, Brown University:
@(define brown-msc 
  (filter (lambda (s) (and 
    (equal? (student-advising-affiliation s) "Brown University")
    (equal? (student-type s) "M.Sc.")))
  (students)))
@(list-students brown-msc)

@(exact "\\noindent\\hspace{1cm}")
@bf{Undergraduate research advisor}, Brown University:
@(define brown-ugrad 
  (filter (lambda (s) (and 
    (equal? (student-advising-affiliation s) "Brown University")
    (equal? (student-type s) "Undergraduate")))
  (students)))
@(list-students brown-ugrad)

@(exact "\\noindent\\hspace{1cm}")
@bf{Research advisor}, Massachusetts Institute of Technology:
@(define mit-research 
  (filter (lambda (s) (and 
    (equal? (student-advising-affiliation s) "Massachusetts Institute of Technology")
    (equal? (student-type s) "Research advisor")))
  (students)))
@(list-students mit-research)

@(exact "\\section{Professional Service}")

@(exact "\\input{cv/university-service.tex}")

@(exact "
\\smallskip
\\begin{adjustwidth}{1cm}{}
{\\footnotesize
Conferences are the primary publication venue in Computer Science. Service to the profession centers on conference program committee memberships.
}
\\end{adjustwidth}
")

@(for/list ([service-types (group-services (services))]) (list
  (exact "\\noindent\\hspace{1cm}") (bf (service-type ((compose car car) service-types)))
  (exact "\\begin{itemize}[leftmargin=1.5cm]\\setlength{\\itemsep}{0pt}")
  (for/list ([service-venues service-types]) (list 
    (exact "\\item ")
    (service-venue (car service-venues))
    (exact ": ")
    (drop-right (flatten 
      (map (lambda (i) (list i ", "))
      (map (lambda (s)
        (exact (format "\\href{~a}{~a}"
                       (string-replace (service-url s) "#" "\\#")
                       ((compose number->string service-year) s)))
      ) service-venues))) 1)
  ))
  (exact "\\end{itemize}")))
