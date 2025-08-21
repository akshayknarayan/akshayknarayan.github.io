#lang scribble/base

@provide[
  students
  student-name
  student-type
  student-start-time
  student-end-time
  student-postgrad-affiliation
  student-advising-affiliation
  student-projects
  student-note
  student-thesis
]

@(struct student (
  name 
  type 
  start-time 
  end-time 
  advising-affiliation 
  postgrad-affiliation 
  projects 
  note 
  thesis) 
  #:transparent)
@(define (make-student
  #:name name
  #:type type
  #:start-time start-time
  #:end-time [end-time '()]
  #:advising-affiliation [advising-affiliation '()]
  #:postgrad-affiliation [pg-affiliation '()]
  #:projects [projects '()]
  #:note [note '()]
  #:thesis [thesis '()])
  (student name type start-time end-time advising-affiliation pg-affiliation projects note thesis))

@(define brown "Brown University")
@(define berkeley "University of California, Berkeley")
@(define mit "Massachusetts Institute of Technology")
@(define ugrad "Undergraduate")
@(define masters "M.Sc.")
@(define research "Research advisor")

@(define (students) (list
  @make-student[
    #:name "Hailey Hsiung"
    #:type @ugrad
    #:start-time "September 2025"
    #:advising-affiliation @brown
  ]
  
  @make-student[
    #:name "Hee Su \"Julie\" Chung"
    #:type @ugrad
    #:start-time "September 2025"
    #:advising-affiliation @brown
  ]
  
  @make-student[
    #:name "Bhavani Venkatesan"
    #:type @ugrad
    #:start-time "May 2025"
    #:advising-affiliation @brown
  ]
  
  @make-student[
    #:name "Xinyu \"Kevin\" Dong"
    #:type @research
    #:start-time "May 2025"
    #:note "M.Sc. student at U. Penn."
    #:advising-affiliation @brown
  ]

  @make-student[
    #:name "Edward Nguyen"
    #:type @ugrad
    #:start-time "February 2025"
    #:advising-affiliation @brown
  ]

  @make-student[
    #:name "Ziyun \"Alice\" Song"
    #:type @masters
    #:start-time "October 2024"
    #:advising-affiliation @brown
  ]
  
  @make-student[
    #:name "Megan Zheng"
    #:type @ugrad
    #:start-time "January 2025"
    #:advising-affiliation @brown
  ]
  
  @make-student[
    #:name "Mengistie Hailemariam"
    #:type @ugrad
    #:start-time "November 2024"
    #:advising-affiliation @brown
  ]

  @make-student[
    #:name "Aditi Srinivasan"
    #:type @research
    #:advising-affiliation @mit
    #:start-time "October 2018"
    #:end-time "December 2020"
    #:note "Undergraduate and M.Eng. student"
    #:thesis (cons "https://dspace.mit.edu/handle/1721.1/130715" 
                   "Measuring and Optimizing for Network Conditions on Drones")
    #:postgrad-affiliation "Jane Street Capital"
  ]))
