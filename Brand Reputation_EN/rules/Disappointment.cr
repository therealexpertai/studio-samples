SCOPE SENTENCE
{
    //I'm so disappointed
    DOMAIN(01.03:HIGH)
    {
        SYNCON(94459,100621206,73910)//@SYN: #94459# [frustrated] //@SYN: #100621206# [disappointment] //@SYN: #73910# [disappoint]
    }

    //I am frustrated
    DOMAIN(01.03:NORMAL)
    {
        LEMMA("frustration","frustrate")
    }

    //they are so rude
    DOMAIN(01.03:NORMAL)
    {
        SYNCON(84841,84837)//@SYN: #84841# [rude] //@SYN: #84837# [rude]
    }

    //They don't even try to listen
    DOMAIN(01.03:NORMAL)
    {
        SYNCON(69391,193096)//@SYN: #69391# [refuse] //@SYN: #193096# [not]
        <:4>
        LEMMA("listen","help","support","respond","try")
    }

    //disgusting
    DOMAIN(01.03:NORMAL)
    {
        ANCESTOR(91490)//@SYN: #91490# [unpleasant]
    }

    //I pay for the same problem
    DOMAIN(01.03:NORMAL)
    {
        LEMMA("same")
        >>
        LEMMA("problem","issue")
    }

    //which I reported earlier
    DOMAIN(01.03:NORMAL)
    {
        LEMMA("report") + TYPE(VER)
        >>
        SYNCON(193658)//@SYN: #193658# [early]
    }

    //I have tried everything
    DOMAIN(01.03:NORMAL)

    {
        SYNCON(77086)//@SYN: #77086# [try]
        >>
        LEMMA("everything")
    }

    //This is ridiculous
    DOMAIN(01.03:LOW)
    {
        SYNCON(95849)//@SYN: #95849# [ridiculous]
    }

    //not capable
    DOMAIN(01.03:LOW)
    {
        ANCESTOR(193096,94068)//@SYN: #193096# [not] //@SYN: #94068# [no]
        >>
        LEMMA("sign","capable")
    }

    //so disappointing
    DOMAIN(01.03:LOW)
    {
        !SYNCON(193096)//@SYN: #193096# [not]
        <:5>
        ANCESTOR(93093,162)//@SYN: #93093# [disappointing] //@SYN: #162# [disappointing]
    }

    //you should not play with the sentiment of people
    DOMAIN(01.03:LOW)
    {
        LEMMA("play")
        <:3>
        ANCESTOR(158584,100009415)//@SYN: #158584# [sentiment] //@SYN: #100009415# [emotions]
    }

    //nothing to do
    DOMAIN(01.03:LOW)
    {
        KEYWORD("nothing")
        <:2>
        TYPE(AUX)
        >>
        SYNCON(66059)//@SYN: #66059# [act]
    }

    //this is a theft!
    DOMAIN(01.03:NORMAL)
    {
        ANCESTOR(102727213)//@SYN: #102727213# [theft]
    }

    //expensive
    DOMAIN(01.03:LOW)
    {
        !SYNCON(193096)//@SYN: #193096# [not]
        <:5>
        ANCESTOR(86457)//@SYN: #86457# [expensive]
    }

    //somewhat of a concern//sadly
    DOMAIN(01.03:LOW)
    {
        SYNCON(193087,26973)//@SYN: #193087# [sadly] //@SYN: #26973# [concern]
    }

    //lack of USB ports
    DOMAIN(01.03:LOW)
    {
        LEMMA("lack")
        >>
        KEYWORD("of")
    }

}
