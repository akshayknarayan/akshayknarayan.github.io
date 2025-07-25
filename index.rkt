#lang scribble/html
  
@(define (style) (list  
  @link[rel:"stylesheet" href:"https://fonts.googleapis.com/css2?family=Recursive:slnt,CASL,MONO@-1,0.75,0.25&display=swap"]
  @link[rel:"stylesheet" href:"main.css"]
))

@(define me @b{Akshay Narayan})
@(define (award t) @font[color: "#6c71c4" t])

@(define (service-list services) @ul{
   @(for/list ([service services]) @li{@a[href: (car service) (cdr service)]})
})

@(define (publication
  #:title title
  #:authors [authors '()]
  #:venue venue
  #:links links)
  @p{
    @(string-append "\"" title "\"")
    @(if (empty? authors)
         ""
         @text{
           @br
           @(drop-right (flatten (map (lambda (i) (list i ", ")) authors)) 1)
         }
    )
    @br
    @i{@venue}
    @br
    @(for/list ([link links]) (list "[" @a[href: (car link) (cdr link)] "]"))
  })

@doctype{html}
@html[lang: "en"]{
@head{
  @title{Akshay Narayan}
  @meta[charset: "utf-8"]
  @style
}
@body{
  @h1{Akshay Narayan}
  @div[style: "text-align:left;"]{
    @p{
      I am an assistant professor at Brown University. 
      My research is in computer systems and networking, and focuses on ways to make specialization for network environments accessible. Toward this goal, I develop new abstractions to help applications cope with both unpredictable bandwidth allocations in the modern Internet, as well as with modern dynamic network environments as software and hardware trends drive increased network variability and complexity. 
    }
    
    @p{
      Before this, I was a postdoctoral researcher at UC Berkeley/ICSI in the @a[href: "https://netsys.cs.berkeley.edu"]{NetSys lab}, 
      and before that I was a graduate student at MIT working with @a[href: "http://nms.csail.mit.edu/~hari/"]{Hari Balakrishnan} and @a[href: "https://people.csail.mit.edu/alizadeh/"]{Mohammad Alizadeh}.
      My @a[href: "https://dspace.mit.edu/handle/1721.1/144577"]{thesis} described new abstractions to help applications cope with modern dynamic network environments as software and hardware trends drive increased network variability and complexity.
      During graduate school, I was supported by an @a[href: "https://www.nsfgrfp.org"]{NSF Graduate Research Fellowship}.
      I previously received a @a[href: "http://news.mit.edu/2007/jacobs-1019"]{Irwin Mark Jacobs and Joan Klein Jacobs Presidential Fellowship}.
      Prior to graduate school, I was a research assistant at NetSys working with
      @a[href: "https://www.eecs.berkeley.edu/~sylvia/"]{Sylvia Ratnasamy} and
      @a[href: "https://www.eecs.berkeley.edu/Faculty/Homepages/shenker.html"]{Scott Shenker}.
      Before that, I was an undergrad at UC Berkeley, from which I graduated with High Honors in 2015.
    }

    @p{
      These are links to my 
      @a[href: "./res/akshay-narayan-cv.pdf"]{CV}, 
      @a[href: "https://github.com/akshayknarayan"]{GitHub page}, and 
      @a[href: "./res/akshayn-ssh.txt"]{SSH Public Key}.
      If you want to contact me, you can do so via 
      @a[href: "https://keybase.io/akshayn"]{Keybase}, 
      @a[rel: "me" href: "https://discuss.systems/@akshayn"]{Mastodon}, or 
      @a[href: "mailto:akshayn@brown.edu"]{Email} @text|{(akshayn@brown.edu)}|.
    }

    @p{ ★ I maintain a @a[href: "./coffee.html"]{list of some good coffee places}.  }
  }
  
  @div[style: "text-align:left;"]{
    @h4{Working With Me}
    @p{
      I am currently recruiting PhD students, though I am usually interested in working with students at all levels and postdocs. 
      If you are already at Brown, please email me. Otherwise, I unfortunately cannot respond to most emails. 
      For prospective Brown students, I recommend simply submitting an application and mentioning me in it. 
      For prospective postdocs, please email me, though I tend to have narrow research area requirements for postdoc positions.
      Note that using the email address listed above is more likely to elicit a response.
    }
  }
        
  @hr
  
  @div[style: "text-align:left;"]{
    @h2{Teaching}
    @p{
      Spring 2025: 
      @a[href: "https://cs.brown.edu/courses/csci1675/spring2025/"]{CSCI 1675: Designing High-Performance Network Systems}
    }
    @p{
      Fall 2024: 
      @a[href: "https://cs.brown.edu/courses/csci2680/fall2024/"]{CSCI 2680: Computer Networks and the Internet}
    }
  }

  @div[style: "text-align:left;"]{
    @h2{Publications}
    @publication[
      #:title "Kernel Extension DSLs Should Be Verifier-Safe!"
      #:authors (list "Franco Solleza" "Justus Adam" @me "Malte Schwarzkopf" "Andrew Crotty" "Nesime Tatbul")
      #:venue "eBPF 2025"
      #:links (list (cons "./res/bql_sigcomm_2025.pdf" "Paper")
                    (cons "https://conferences.sigcomm.org/sigcomm/2025/workshop/ebpf/" "Program"))
    ]

    @publication[
      #:title "Lightweight Automated Reasoning for Network Architectures"
      #:authors (list "Rahul Bothra" "Venkat Arun" "Brighten Godfrey" @me "Ahmed Saeed")
      #:venue "HotNets 2024"
      #:links (list (cons "./res/archie.pdf" "Paper")
                    (cons "https://conferences.sigcomm.org/hotnets/2024/program.html" "Conference Program"))
    ]
    
    @publication[
      #:title "Reverse-Engineering Congestion Control Algorithm Behavior"
      #:authors (list "Margarida Ferreira" "Ranysha Ware" "Yash Kothari"
        "Inês Lynce" "Ruben Martins" @me "Justine Sherry")
      #:venue "IMC 2024"
      #:links (list (cons "./res/Abagnale.pdf" "Paper")
                    (cons "https://conferences.sigcomm.org/imc/2024/program/" "Conference Program"))
    ]

    @publication[
      #:title "Principles for Internet Congestion Management"
      #:authors (list "Lloyd Brown" "Albert Gran Alcoz" "Frank Cangialosi" 
        @me "Mohammad Alizadeh" "Hari Balakrishnan" "Eric Friedman" 
        "Ethan Katz-Bassett" "Arvind Krishnamurthy" "Michael Schapira" "Scott Shenker")
      #:venue "SIGCOMM 2024"
      #:links (list
        (cons "./res/rcs.pdf" "Paper") 
        (cons "./res/rcs-slides.pdf" "Slides") 
        (cons "https://conferences.sigcomm.org/sigcomm/2024/program/#sharing-the-network" "Conference Program") 
        (cons "https://datatracker.ietf.org/meeting/121/materials/agenda-121-iccrg-04" "IETF 121 ICCRG"))
    ]

    @publication[
      #:title "How I Learned to Stop Worrying About CCA Contention"
      #:authors (list "Lloyd Brown" "Yash Kothari" @me 
                      "Arvind Krishnamurthy" "Aurojit Panda" "Justine Sherry" "Scott Shenker")
      #:venue "Hotnets 2023"
      #:links (list 
        (cons "./res/cca-contention.pdf" "Paper")
        (cons "./res/ccfairness-hotnets23.pdf" "Slides")
        (cons "https://conferences.sigcomm.org/hotnets/2023/program.html" "Conference Program"))
    ]

    @publication[
      #:title "The Case for an Internet Primitive for Fault Localization"
      #:authors (list "William Sussman" "Emily Marx" "Venkat Arun" @me 
                      "Mohammad Alizadeh" "Hari Balakrishnan" "Aurojit Panda" "Scott Shenker")
      #:venue "Hotnets 2022"
      #:links (list (cons "./res/wtf-hotnets22.pdf" "Paper")
                    (cons "https://conferences.sigcomm.org/hotnets/2022/program.html" "Conference Program"))
    ]

    @publication[
      #:title "Elasticity Detection: A Building Block for Internet Congestion Control"
      #:authors (list "Prateesh Goyal" @me "Frank Cangialosi" "Srinivas Narayana" 
                      "Mohammad Alizadeh" "Hari Balakrishnan")
      #:venue "SIGCOMM 2022"
      #:links (list (cons "./res/Nimbus_SIGCOMM2022_Camera_Ready.pdf" "Paper")
                    (cons "https://dl.acm.org/doi/10.1145/3544216.3544221" "ACM DL")
                    (cons "https://conferences.sigcomm.org/sigcomm/2022/program.html" "Conference Program"))
    ]

    @publication[
      #:title "Counterfeiting Congestion Control Algorithms"
      #:authors (list "Margarida Ferreira" @me "Inês Lynce" "Ruben Martins" "Justine Sherry")
      #:venue "Hotnets 2021"
      #:links (list (cons "./res/CCA_Synthesis_HotNets21.pdf" "Paper")
                    (cons "https://www.youtube.com/watch?v=QQuV5QnwzxE" "Talk")
                    (cons "https://conferences.sigcomm.org/hotnets/2021/" "Conference Program"))
    ]

    @publication[
      #:title "Site-to-Site Internet Traffic Control"
      #:authors (list "Frank Cangialosi" @me "Prateesh Goyal" 
                      "Radhika Mittal" "Mohammad Alizadeh" "Hari Balakrishnan")
      #:venue (list "EuroSys 2021" @award{Awarded Best Artifact!})
      #:links (list 
        (cons "./res/bundler.pdf" "Paper")
        (cons "https://www.youtube.com/watch?v=H3aJQjiEH7I&list=PLzDuHU-z7gNjuSbEYCFXZtWAl3nAdNF2f&index=23" "Long Talk")
        (cons "https://www.youtube.com/watch?v=c1UiQKACQ6I&list=PLzDuHU-z7gNghxOWGcdLK_xWtqHjxaYTm&index=23" "Short Talk")
        (cons "https://2021.eurosys.org/conf-prog.html#program" "Conference Program")
        (cons "https://www.sigops.org/2021/reproducible-experiments-for-useful-internet-systems/" "SIGOPS Blog Post")
        (cons "https://dl.acm.org/doi/10.1145/3526062.3536355" "P-RECS 2022"))
    ]

    @publication[
      #:title "Bertha: Tunneling through the Network API"
      #:authors (list @me "Aurojit Panda" "Mohammad Alizadeh" "Hari Balakrishnan" "Arvind Krishnamurthy" "Scott Shenker")
      #:venue "Hotnets 2020"
      #:links (list (cons "./res/bertha-hotnets20.pdf" "Paper")
                    (cons "./res/bertha-hotnets-slides.pdf" "Slides")
                    (cons "https://youtu.be/gkz-A9BDlqU?t=12155" "Talk Video")(cons "https://conferences.sigcomm.org/hotnets/2020/program.html" "Conference Program"))
    ]

    @publication[
      #:title "Park: An Open Platform for Learning-Augmented Computer Systems"
      #:authors (list "Hongzi Mao" "Parimarjan Negi" @me "Hanrui Wang" "Jiacheng Yang" "Haonan Wang" 
                      "Ryan Marcus" "Ravichandra Addanki" "Mehrdad Khani Shirkoohi" "Songtao He" "Vikram Nathan" 
                      "Frank Cangialosi" "Shaileshh Venkatakrishnan" "Wei-Hung Weng" "Song Han" "Tim Kraska" 
                      "Mohammad Alizadeh")
      #:venue "NeurIPS 2019"
      #:links (list (cons "https://dl.acm.org/doi/10.5555/3454287.3454511" "Paper")
                    (cons "https://openreview.net/forum?id=BkgfRbEPsE" "ICML 2019 RL4RL Workshop")
                    (cons "https://neurips.cc/Conferences/2019/Schedule?showEvent=13442" "Conference Program"))
    ]

    @publication[
      #:title "Restructuring Endpoint Congestion Control"
      #:authors (list @me "Frank Cangialosi" "Deepti Raghavan" "Prateesh Goyal" "Srinivas Narayana" "Radhika Mittal" "Mohammad Alizadeh" "Hari Balakrishnan")
      #:venue "SIGCOMM 2018"
      #:links (list 
        (cons "./res/ccp-sigcomm18.pdf" "Paper")
        (cons "./res/ccp-sigcomm18-slides.pdf" "Slides PDF")
        (cons "https://youtu.be/t_5__v6CNYE?t=14759" "Session Video")
        (cons "https://conferences.sigcomm.org/sigcomm/2018/program.html" "Conference Program")
        (cons "https://netdevconf.org/0x12/session.html?restructuring-endpoint-congestion-control" "Linux NetDev 0x12")
        (cons "./res/ccp-poster.pdf" "ANRW 2018 Poster")
        (cons "https://irtf.org/anrw/2018/posters.html" "Poster Listing")
        (cons "https://github.com/torvalds/linux/commit/0baf26b0fcd74bbfcef53c5d5e8bad2b99c8d0d2" @award{Cited as motivation for congestion control support in eBPF!}))
    ]

    @publication[
      #:title "Sincronia: Near-Optimal Network Design for Coflows"
      #:authors (list "Saksham Agarwal" "Shijin Rajakrishnan" @me "Rachit Agarwal" "David Shmoys" "Amin Vahdat")
      #:venue (list "SIGCOMM 2018" @award{Awarded Best Student Paper!})
      #:links (list (cons "./res/sincronia.pdf" "Paper")
                    (cons "https://conferences.sigcomm.org/sigcomm/2018/program.html" "Conference Program"))
    ]

    @publication[
      #:title "The Case for Moving Congestion Control Out of the Datapath"
      #:authors (list @me "Frank Cangialosi" "Prateesh Goyal" "Srinivas Narayana" "Mohammad Alizadeh" "Hari Balakrishnan")
      #:venue "HotNets 2017"
      #:links (list (cons "./res/ccp-hotnets.pdf" "Paper")
                    (cons "./res/ccp-hotnets-slides-12012017-final.pdf" "Slides PDF")
                    (cons "http://conferences.sigcomm.org/hotnets/2017/program.html" "Conference Program"))
    ]
    
    @publication[
      #:title "Network Requirements for Resource Disaggregation" 
      #:authors (list "Peter Gao" @me "Sagar Karandikar" "Joao Carreira" "Sangjin Han" "Rachit Agarwal" "Sylvia Ratnasamy" "Scott Shenker")
      #:venue "OSDI 2016"
      #:links (list 
        (cons "./res/disaggregation_osdi_2016.pdf" "Paper")
        (cons "https://www.usenix.org/sites/default/files/conference/protected-files/osdi16_slides_gao.pdf" "Slides")
        (cons "./res/osdi16posters-paper1.pdf" "Poster")
        (cons "https://www.usenix.org/conference/osdi16/program" "Conference Program"))
    ]

    @publication[
      #:title "pHost: Distributed Near-Optimal Datacenter Transport Over Commodity Network Fabric." 
      #:authors (list "Peter Gao" @me "Gautam Kumar" "Rachit Agarwal" "Sylvia Ratnasamy" "Scott Shenker")
      #:venue "CoNEXT 2015"
      #:links (list (cons "./res/phost.pdf" "Paper")
                    (cons "https://conferences2.sigcomm.org/co-next/2015/img/papers/phost.pdf" "Slides")
                    (cons "https://conferences2.sigcomm.org/co-next/2015/#!/program" "Conference Program"))
    ]
  }
  
  @div[style: "text-align:left;"]{
    @h2{Service}
    @(service-list (list 
      (cons "https://www.usenix.org/conference/nsdi26" "NSDI 2026 TPC")
      (cons "https://conferences.sigcomm.org/sigcomm/2025/workshop/ebpf/" "2025 SIGCOMM eBPF Workshop TPC")
      (cons "https://conferences.sigcomm.org/sigcomm/2025/tpc/" "SIGCOMM 2025 TPC")
      (cons "https://conferences.sigcomm.org/co-next/2025/#!/pc" "CoNEXT 2025 TPC")
      (cons "https://sysdw24.github.io/" "SysDW 2024 TPC")
      (cons "https://conferences.sigcomm.org/hotnets/2024/program-committee/" "HotNets 2024 TPC")
      (cons "https://www.irtf.org/anrw/2024/committees.html" "ANRW 2024 TPC")
      (cons "https://conferences.sigcomm.org/events/apnet2024/pc.php" "APNet 2024 TPC")
      (cons "https://www.sigcomm.org/publications/computer-communication-review/" "SIGCOMM CCR 2024")
      (cons "https://www.usenix.org/conference/nsdi24/call-for-papers" "NSDI 2024 TPC")
      (cons "https://irtf.org/anrw/2023/" "ANRW 2023 TPC")
      (cons "https://conferences.sigcomm.org/sigcomm/2021/cf-artifacts.html" "SIGCOMM 2021 Artifact Evaluation")
    ))
  }

  @div[style: "text-align:left;"]{
    @h2{Talks}
    
    @publication[
      #:title "Preview: Networking" 
      #:venue "OSDI/ATC 2021 Topic Preview Session"
      #:links (list (cons "./res/osdi21_slides_narayan.pdf" "Slides PDF")
                    (cons "https://www.usenix.org/conference/osdi21/presentation/preview-networking" "Video"))
    ]

    @publication[
      #:title "Modern Network Hardware"
      #:venue "NSDI 2019 Topic Preview Session"
      #:links (list (cons "./res/nsdi19-modernnetworkhardware-topicpreview.pdf" "Slides PDF")
                    (cons "https://www.usenix.org/conference/nsdi19/presentation/preview" "Video"))
    ]
  }
}
}
