#lang scribble/base

@require[racket/list]

@provide[
  services
  service
  make-service
  service-venue
  service-year
  service-type
  service-url
  group-services
]

@(struct service (venue year type url) #:transparent)
@(define (make-service
  #:venue venue
  #:year year
  #:type type
  #:url url)
  (service venue year type url))

@; group by type and venue, then list year with link
@(define (group-services servs)
  (map (lambda (s) (group-by service-venue s)) 
       (group-by service-type servs)))

@(define (services) (list 
  @make-service[
    #:venue "NSDI"
    #:year 2026
    #:type "TPC"
    #:url "https://www.usenix.org/conference/nsdi26/call-for-papers"
  ]

  @make-service[
    #:venue "eBPF"
    #:year 2025
    #:type "TPC"
    #:url "https://conferences.sigcomm.org/sigcomm/2025/workshop/ebpf/"
  ]
  
  @make-service[
    #:url "https://ccronline.sigcomm.org/editorial-board/"
    #:venue "SIGCOMM CCR"
    #:year 2025
    #:type "External Reviewer"
  ]

  @make-service[
    #:venue "SIGCOMM"
    #:year 2025
    #:type "TPC"
    #:url "https://conferences.sigcomm.org/sigcomm/2025/tpc/"
  ]

  @make-service[
    #:venue "CoNEXT"
    #:year 2025
    #:type "TPC"
    #:url "https://conferences.sigcomm.org/co-next/2025/#!/pc"
  ]

  @make-service[
    #:url "https://sysdw24.github.io/"
    #:venue "SysDW"
    #:year 2024
    #:type "TPC"
  ]

  @make-service[
    #:url "https://conferences.sigcomm.org/hotnets/2024/program-committee/"
    #:venue "HotNets"
    #:year 2024
    #:type "TPC"
  ]

  @make-service[
    #:url "https://www.irtf.org/anrw/2024/committees.html"
    #:venue "ANRW"
    #:year 2024
    #:type "TPC"]

  @make-service[
    #:url "https://conferences.sigcomm.org/events/apnet2024/pc.php"
    #:venue "APNet"
    #:year 2024
    #:type "TPC"]

  @make-service[
    #:url "https://ccronline.sigcomm.org/editorial-board/"
    #:venue "SIGCOMM CCR"
    #:year 2024
    #:type "External Reviewer"
  ]

  @make-service[
    #:url "https://www.usenix.org/conference/nsdi24/call-for-papers"
    #:venue "NSDI"
    #:year 2024
    #:type "TPC"]

  @make-service[
    #:url "https://www.irtf.org/anrw/2023/committees.html"
    #:venue "ANRW"
    #:year 2023
    #:type "TPC"]

  @make-service[
    #:url "https://conferences.sigcomm.org/sigcomm/2021/cf-artifacts.html"
    #:venue "SIGCOMM"
    #:year 2021
    #:type "Artifact Evaluation Committee"]
))
