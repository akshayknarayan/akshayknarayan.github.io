#lang scribble/html

@provide[
  publications 
  publication
  make-publication
  publication-title
  publication-authors
  publication-authors-str
  publication-venue
  publication-year
  publication-award
  publication-links
  publication-key
  bibtex
]

@(define (bibtex publication)
  @text{
    @"@"inproceedings{@(publication-key publication),
      title = {{ @(publication-title publication) }},
      author = { @(string-join (publication-authors-str publication) " and ") },
      year = { @(publication-year publication) },
      booktitle = { @(publication-venue publication) },
      doi = { @(publication-doi publication) },
    }
  }
)

@(struct publication (title authors venue year doi award key links) #:transparent)
@(define (publication-authors-str publication)
   (map (lambda (a) (if (eq? a 'me) "Akshay Narayan" a)) (publication-authors publication)))

@(define (make-publication
  #:title title
  #:authors [authors '()]
  #:venue venue
  #:year year
  #:doi [doi '()]
  #:award [award '()]
  #:key [key '()]
  #:links links)
  (publication
    title 
    authors 
    venue 
    year 
    doi
    award 
    (if (eq? key '())
      (if (empty? authors) "none" (format "~a-~a" 
        ; first author lastname lowercase
        (string-downcase (car (cdr (string-split (car authors)))))
        year))
      key)
    links))

@(define (publications)
   (list
    @make-publication[
      #:title "Kernel Extension DSLs Should Be Verifier-Safe!"
      #:authors (list "Franco Solleza" "Justus Adam" 'me "Malte Schwarzkopf" "Andrew Crotty" "Nesime Tatbul")
      #:venue "eBPF"
      #:year 2025
      #:doi "10.1145/3748355.3748368"
      #:key "bql"
      #:links (list (cons "./res/bql_sigcomm_2025.pdf" "Paper")
                    (cons "https://conferences.sigcomm.org/sigcomm/2025/workshop/ebpf/" "Program"))
    ]

    @make-publication[
      #:title "Lightweight Automated Reasoning for Network Architectures"
      #:authors (list "Rahul Bothra" "Venkat Arun" "Brighten Godfrey" 'me "Ahmed Saeed")
      #:venue "HotNets"
      #:year 2024
      #:doi "10.1145/3696348.3696865"
      #:links (list (cons "./res/archie.pdf" "Paper")
                    (cons "https://conferences.sigcomm.org/hotnets/2024/program.html" "Conference Program"))
    ]
    
    @make-publication[
      #:title "Reverse-Engineering Congestion Control Algorithm Behavior"
      #:authors (list "Margarida Ferreira" "Ranysha Ware" "Yash Kothari"
        "Inês Lynce" "Ruben Martins" 'me "Justine Sherry")
      #:venue "IMC"
      #:year 2024
      #:doi "10.1145/3646547.3688443"
      #:key "abagnale"
      #:links (list (cons "./res/Abagnale.pdf" "Paper")
                    (cons "https://conferences.sigcomm.org/imc/2024/program/" "Conference Program"))
    ]

    @make-publication[
      #:title "Principles for Internet Congestion Management"
      #:authors (list "Lloyd Brown" "Albert Gran Alcoz" "Frank Cangialosi" 
        'me "Mohammad Alizadeh" "Hari Balakrishnan" "Eric Friedman" 
        "Ethan Katz-Bassett" "Arvind Krishnamurthy" "Michael Schapira" "Scott Shenker")
      #:venue "SIGCOMM"
      #:year 2024
      #:doi "10.1145/3651890.3672247"
      #:key "rcs"
      #:links (list
        (cons "./res/rcs.pdf" "Paper") 
        (cons "./res/rcs-slides.pdf" "Slides") 
        (cons "https://conferences.sigcomm.org/sigcomm/2024/program/#sharing-the-network" "Conference Program") 
        (cons "https://datatracker.ietf.org/meeting/121/materials/agenda-121-iccrg-04" "IETF 121 ICCRG"))
    ]

    @make-publication[
      #:title "How I Learned to Stop Worrying About CCA Contention"
      #:authors (list "Lloyd Brown" "Yash Kothari" 'me 
                      "Arvind Krishnamurthy" "Aurojit Panda" "Justine Sherry" "Scott Shenker")
      #:venue "Hotnets"
      #:year 2023
      #:doi "10.1145/3626111.3628204"
      #:key "cca-contention"
      #:links (list 
        (cons "./res/cca-contention.pdf" "Paper")
        (cons "./res/ccfairness-hotnets23.pdf" "Slides")
        (cons "https://conferences.sigcomm.org/hotnets/2023/program.html" "Conference Program"))
    ]

    @make-publication[
      #:title "The Case for an Internet Primitive for Fault Localization"
      #:authors (list "William Sussman" "Emily Marx" "Venkat Arun" 'me 
                      "Mohammad Alizadeh" "Hari Balakrishnan" "Aurojit Panda" "Scott Shenker")
      #:venue "Hotnets"
      #:year 2022
      #:doi "10.1145/3563766.3564105"
      #:key "wtf"
      #:links (list (cons "./res/wtf-hotnets22.pdf" "Paper")
                    (cons "https://conferences.sigcomm.org/hotnets/2022/program.html" "Conference Program"))
    ]

    @make-publication[
      #:title "Elasticity Detection: A Building Block for Internet Congestion Control"
      #:authors (list "Prateesh Goyal" 'me "Frank Cangialosi" "Srinivas Narayana" 
                      "Mohammad Alizadeh" "Hari Balakrishnan")
      #:venue "SIGCOMM"
      #:year 2022
      #:doi "10.1145/3544216.3544221"
      #:key "nimbus"
      #:links (list (cons "./res/Nimbus_SIGCOMM2022_Camera_Ready.pdf" "Paper")
                    (cons "https://dl.acm.org/doi/10.1145/3544216.3544221" "ACM DL")
                    (cons "https://conferences.sigcomm.org/sigcomm/2022/program.html" "Conference Program"))
    ]

    @make-publication[
      #:title "Counterfeiting Congestion Control Algorithms"
      #:authors (list "Margarida Ferreira" 'me "Inês Lynce" "Ruben Martins" "Justine Sherry")
      #:venue "Hotnets"
      #:year 2021
      #:doi "10.1145/3484266.3487381"
      #:key "mr880"
      #:links (list (cons "./res/CCA_Synthesis_HotNets21.pdf" "Paper")
                    (cons "https://www.youtube.com/watch?v=QQuV5QnwzxE" "Talk")
                    (cons "https://conferences.sigcomm.org/hotnets/2021/" "Conference Program"))
    ]

    @make-publication[
      #:title "Site-to-Site Internet Traffic Control"
      #:authors (list "Frank Cangialosi" 'me "Prateesh Goyal" 
                      "Radhika Mittal" "Mohammad Alizadeh" "Hari Balakrishnan")
      #:venue "EuroSys"
      #:year 2021
      #:doi "10.1145/3447786.3456260"
      #:award "Awarded Best Artifact!"
      #:key "bundler"
      #:links (list 
        (cons "./res/bundler.pdf" "Paper")
        (cons "https://www.youtube.com/watch?v=H3aJQjiEH7I&list=PLzDuHU-z7gNjuSbEYCFXZtWAl3nAdNF2f&index=23" "Long Talk")
        (cons "https://www.youtube.com/watch?v=c1UiQKACQ6I&list=PLzDuHU-z7gNghxOWGcdLK_xWtqHjxaYTm&index=23" "Short Talk")
        (cons "https://2021.eurosys.org/conf-prog.html#program" "Conference Program")
        (cons "https://www.sigops.org/2021/reproducible-experiments-for-useful-internet-systems/" "SIGOPS Blog Post")
        (cons "https://dl.acm.org/doi/10.1145/3526062.3536355" "P-RECS 2022"))
    ]

    @make-publication[
      #:title "Bertha: Tunneling through the Network API"
      #:authors (list 'me "Aurojit Panda" "Mohammad Alizadeh" "Hari Balakrishnan" "Arvind Krishnamurthy" "Scott Shenker")
      #:venue "Hotnets"
      #:year 2020
      #:doi "10.1145/3422604.3425927"
      #:key "bertha-hotnets"
      #:links (list (cons "./res/bertha-hotnets20.pdf" "Paper")
                    (cons "./res/bertha-hotnets-slides.pdf" "Slides")
                    (cons "https://youtu.be/gkz-A9BDlqU?t=12155" "Talk Video")(cons "https://conferences.sigcomm.org/hotnets/2020/program.html" "Conference Program"))
    ]

    @make-publication[
      #:title "Park: An Open Platform for Learning-Augmented Computer Systems"
      #:authors (list "Hongzi Mao" "Parimarjan Negi" 'me "Hanrui Wang" "Jiacheng Yang" "Haonan Wang" 
                      "Ryan Marcus" "Ravichandra Addanki" "Mehrdad Khani Shirkoohi" "Songtao He" "Vikram Nathan" 
                      "Frank Cangialosi" "Shaileshh Venkatakrishnan" "Wei-Hung Weng" "Song Han" "Tim Kraska" 
                      "Mohammad Alizadeh")
      #:venue "NeurIPS"
      #:year 2019
      #:doi "10.5555/3454287.3454511"
      #:key "park"
      #:links (list (cons "https://dl.acm.org/doi/10.5555/3454287.3454511" "Paper")
                    (cons "https://openreview.net/forum?id=BkgfRbEPsE" "ICML 2019 RL4RL Workshop")
                    (cons "https://neurips.cc/Conferences/2019/Schedule?showEvent=13442" "Conference Program"))
    ]

    @make-publication[
      #:title "Restructuring Endpoint Congestion Control"
      #:authors (list 'me "Frank Cangialosi" "Deepti Raghavan" "Prateesh Goyal" "Srinivas Narayana" "Radhika Mittal" "Mohammad Alizadeh" "Hari Balakrishnan")
      #:venue "SIGCOMM"
      #:year 2018
      #:doi "10.1145/3230543.3230553"
      #:key "ccp"
      #:award (cons "https://github.com/torvalds/linux/commit/0baf26b0fcd74bbfcef53c5d5e8bad2b99c8d0d2" "Cited as motivation for congestion control support in eBPF!")
      #:links (list 
        (cons "./res/ccp-sigcomm18.pdf" "Paper")
        (cons "./res/ccp-sigcomm18-slides.pdf" "Slides PDF")
        (cons "https://youtu.be/t_5__v6CNYE?t=14759" "Session Video")
        (cons "https://conferences.sigcomm.org/sigcomm/2018/program.html" "Conference Program")
        (cons "https://netdevconf.org/0x12/session.html?restructuring-endpoint-congestion-control" "Linux NetDev 0x12")
        (cons "./res/ccp-poster.pdf" "ANRW 2018 Poster")
        (cons "https://irtf.org/anrw/2018/posters.html" "Poster Listing"))
    ]

    @make-publication[
      #:title "Sincronia: Near-Optimal Network Design for Coflows"
      #:authors (list "Saksham Agarwal" "Shijin Rajakrishnan" 'me "Rachit Agarwal" "David Shmoys" "Amin Vahdat")
      #:venue "SIGCOMM"
      #:year 2018
      #:doi "10.1145/3230543.3230569"
      #:key "sincronia"
      #:award "Awarded Best Student Paper!"
      #:links (list (cons "./res/sincronia.pdf" "Paper")
                    (cons "https://conferences.sigcomm.org/sigcomm/2018/program.html" "Conference Program"))
    ]

    @make-publication[
      #:title "The Case for Moving Congestion Control Out of the Datapath"
      #:authors (list 'me "Frank Cangialosi" "Prateesh Goyal" "Srinivas Narayana" "Mohammad Alizadeh" "Hari Balakrishnan")
      #:venue "HotNets"
      #:year 2017
      #:doi "10.1145/3152434.3152438"
      #:key "ccp-hotnets"
      #:links (list (cons "./res/ccp-hotnets.pdf" "Paper")
                    (cons "./res/ccp-hotnets-slides-12012017-final.pdf" "Slides PDF")
                    (cons "http://conferences.sigcomm.org/hotnets/2017/program.html" "Conference Program"))
    ]
    
    @make-publication[
      #:title "Network Requirements for Resource Disaggregation" 
      #:authors (list "Peter Gao" 'me "Sagar Karandikar" "Joao Carreira" "Sangjin Han" "Rachit Agarwal" "Sylvia Ratnasamy" "Scott Shenker")
      #:venue "OSDI"
      #:year 2016
      #:doi "10.5555/3026877.3026897"
      #:links (list 
        (cons "./res/disaggregation_osdi_2016.pdf" "Paper")
        (cons "https://www.usenix.org/sites/default/files/conference/protected-files/osdi16_slides_gao.pdf" "Slides")
        (cons "./res/osdi16posters-paper1.pdf" "Poster")
        (cons "https://www.usenix.org/conference/osdi16/program" "Conference Program"))
    ]

    @make-publication[
      #:title "pHost: Distributed Near-Optimal Datacenter Transport Over Commodity Network Fabric." 
      #:authors (list "Peter Gao" 'me "Gautam Kumar" "Rachit Agarwal" "Sylvia Ratnasamy" "Scott Shenker")
      #:venue "CoNEXT"
      #:year 2015
      #:doi "10.1145/2716281.2836086"
      #:key "phost"
      #:links (list (cons "./res/phost.pdf" "Paper")
                    (cons "https://conferences2.sigcomm.org/co-next/2015/img/papers/phost.pdf" "Slides")
                    (cons "https://conferences2.sigcomm.org/co-next/2015/#!/program" "Conference Program"))
    ]
  ))
