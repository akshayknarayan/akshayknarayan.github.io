#lang scribble/html

@require["publications.rkt"] 
  
@(define (style) (list  
  @link[rel:"stylesheet" href:"https://fonts.googleapis.com/css2?family=Recursive:slnt,CASL,MONO@-1,0.75,0.25&display=swap"]
  @link[rel:"stylesheet" href:"main.css"]
))

;@(define me @b{Akshay Narayan})
@(define (service-list services) @ul{
   @(for/list ([service services]) @li{@a[href: (car service) (cdr service)]})
})

@(define (site-publication pub)
  @(define (handle-link x)
    (if (pair? x)
        (list "[" @a[href: (car x) (cdr x)] "]")
        x))
  @p{
    @(string-append "\"" (publication-title pub) "\"")
    @(if (empty? (publication-authors pub))
         ""
         @text{
           @br
           @(drop-right (flatten (map (lambda (i) (list i ", ")) (publication-authors pub))) 1)
         }
    )
    @br
    @i{@(publication-venue pub)} @(publication-year pub)
    @br
    @(if (eq? (publication-award pub) '())
         '()
         (list (font color: "#6c71c4" (handle-link (publication-award pub))) (br)))
    @(for/list ([link (publication-links pub)]) (handle-link link))
    @(if (eq? (publication-key pub) "none") 
         '() 
         @label{
           @input[type: "checkbox" class: "bibtex-sel"]
           @span[style: "cursor:pointer; text-decoration:underline;"]{[BibTex ✎]}
           @span[class: "bibtex-body"]{
           @br
           @(bibtex pub)
           }})
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
    @(for/list ([p (publications)]) (site-publication p))
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
    
    @site-publication[@make-publication[
      #:title "Preview: Networking" 
      #:venue "OSDI/ATC Topic Preview Session"
      #:year 2021
      #:links (list (cons "./res/osdi21_slides_narayan.pdf" "Slides PDF")
                    (cons "https://www.usenix.org/conference/osdi21/presentation/preview-networking" "Video"))
    ]]

    @site-publication[@make-publication[
      #:title "Modern Network Hardware"
      #:venue "NSDI Topic Preview Session"
      #:year 2019 
      #:links (list (cons "./res/nsdi19-modernnetworkhardware-topicpreview.pdf" "Slides PDF")
                    (cons "https://www.usenix.org/conference/nsdi19/presentation/preview" "Video"))
    ]]
  }}}
