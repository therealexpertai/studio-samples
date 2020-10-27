SCOPE SENTENCE
{
    //poor standards
    DOMAIN(01.02:NORMAL)
    {
        LEMMA("poor")
        >>
        LEMMA("standard")
    }

    //Rated with 2 stars
    DOMAIN(01.02:HIGH)
    {
        LEMMA("rate")
        <:4>
        PATTERN("[1-2]")
        >>
        LEMMA("star")
    }

    //Rated with 2 stars
    DOMAIN(01.02:NORMAL)
    {
        !LEMMA("rate")
        <:4>
        PATTERN("[1-2]")
        >>
        LEMMA("star")
    }

    //leave that idea
    DOMAIN(01.02:LOW)
    {
        LEMMA("leave")
        <:2>
        LEMMA("idea")
        OR
        LIST(141169)//@SYN: #141169# [forget]
        <:2>
        TYPE(PRO)
    }

    //file a complaint
    DOMAIN(01.02:HIGH)
    {
        LEMMA("file")
        <:3>
        ANCESTOR(33340,30956)//@SYN: #30956# [blame]
    }

    //this is sad
    DOMAIN(01.02:HIGH)
    {
        !LEMMA("make")
        <:2>
        ANCESTOR(87723,87135,172202,91503)//@SYN: #87723# [sad] //@SYN: #87135# [unfortunate] //@SYN: #172202# [unfortunate] //@SYN: #91503# [unhappy]
    }

    //this makes me sad
    DOMAIN(01.02:LOW)
    {
        LEMMA("make")
        >>
        TYPE(PRO)
        >>
        ANCESTOR(87723,87135,172202,91503)//@SYN: #87723# [sad] //@SYN: #87135# [unfortunate] //@SYN: #172202# [unfortunate] //@SYN: #91503# [unhappy]
    }

    //I'm discontent
    DOMAIN(01.02:HIGH)
    {
        SYNCON(84549)//@SYN: #84549# [discontent]
    }

    //I've had so many troubles
    DOMAIN(01.02:NORMAL)
    {
        SYNCON(62245,33901)//@SYN: #62245# [inconvenience] //@SYN: #33901# [bother]
    }

    //bad product
    DOMAIN(01.02:NORMAL)
    {
        ANCESTOR(87598,94531)//@SYN: #87598# [terrible] //@SYN: #94531# [bad]
        >>
        LEMMA("product")
    }

    //terrible laptop
    DOMAIN(01.02:NORMAL)
    {
        ANCESTOR(87598,94531)//@SYN: #87598# [terrible] //@SYN: #94531# [bad]
        >>
        ANCESTOR(100011019,100000068)//@SYN: #100011019# [machine] //@SYN: #100000068# [computer]
    }

    //I wish I bought something else
    DOMAIN(01.02:NORMAL)
    {
        LEMMA("buy")
        >>
        TYPE(PRO)
        >>
        LEMMA("else")
    }

    //not so good
    DOMAIN(01.02:LOW)
    {
        SYNCON(193096)//@SYN: #193096# [not]
        <:5>
        ANCESTOR(117054581:0,73984:2,87586,84547)//@SYN: #117054581# [satisfaction]
    }

    //I'm so disappointed
    DOMAIN(01.02:LOW)
    {
        LIST(84549:1)//@SYN: #84549# [discontent]
    }

    //This laptop sucks
    DOMAIN(01.02:LOW)
    {
        TYPE(ADJ,PRO)
        <:2>
        LEMMA("suck") + TYPE(VER:3)
    }

    //I wouldn't recommend it
    DOMAIN(01.02:LOW)
    {
        TYPE(AUX)
        >>
        SYNCON(193096)//@SYN: #193096# [not]
        >>
        ANCESTOR(115255)//@SYN: #115255# [v. of advice/suggestion]
    }

}
