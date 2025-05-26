#lang scribble/html

@provide[preamble scouting-report scouting-report-color scouting-report-label]

@(define scouting-report-color "#ff6347")
@(define (scouting-report text) @span[style: (string-append "color:" scouting-report-color) text])
@(define (scouting-report-label) @scouting-report{Scouting Report:})

@(define (preamble) @div{
@h1{Coffee Recommendations}
@p{
I like coffee, especially cappuccinos, so that is mostly what I evaluate. However, what one gets when ordering a "cappuccino" varies wildly; 
the drink I refer to, ~30-40g espresso with ~150-180 ml steamed textured milk, is often variously called a "cortado", a "flat white", etc. 
}

@p{
This page primarily has recommendations for small and independent coffeeshops; 
if instead you want inexpensive or mass-market coffee, it's not hard to find. For pedants, this page additionally contains recommendations for non-coffee items.
There are many medium-to-large-ish chains, with varying levels of consistency and quality, for example @a[href: "https://www.lacolombe.com/pages/cafes"]{La Colombe} or @a[href: "https://bluestonelane.com/cafe-and-coffee-shop-locations/"]{Bluestone Lane}. The line between "chain" and "small and independent but with multiple locations" is nebulous; 
I make no promises of semantic consistency. Cities/regions are in rough descending order of how confident I am in the recommendations. 
}

@p{
Also, thanks to the various members of my coffee committee (in alphabetical order), Albert, Deepti, Gavin, Panda, Paroma, Pratiksha, Rachee, Sagar, Shoumik, Shriram, Suresh, and Vipul sending in their suggestions! Please get in touch if you have a
@scouting-report{scouting report}
to share.
}
})
