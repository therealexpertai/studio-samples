SCOPE SENTENCE
{
    //I am not impressed
    DOMAIN(01.06:HIGH)
    {
        SYNCON(193096)//@SYN: #193096# [not]
        <:2>
        ANCESTOR(88838,73779:0,81689,81776:0) - LEMMA("affect","move")//@SYN: #88838# [interesting] //@SYN: #73779# [impress] //@SYN: #81689# [impressed] //@SYN: #81776# [emotional]
    }

    //not so good
    DOMAIN(01.06:LOW)
    {
        SYNCON(193096)//@SYN: #193096# [not]
        <:2>
        ANCESTOR(87586)//@SYN: #87586# [good]
    }

    //screen is bright but
    DOMAIN(01.06:LOW)
    {
        SYNCON(77408)//@SYN: #77408# [be]
        >>
        TYPE(ADJ)
        >>
        KEYWORD("but")
    }

    //an ok computer
    DOMAIN(01.06:NORMAL)
    {
        TYPE(ART)
        >>
        ANCESTOR(164622)//@SYN: #164622# [all right]
        >>
        ANCESTOR(102424752,100011019,100000068,18178)
    }

    //nothing too crazy
    DOMAIN(01.06:LOW)
    {
        LEMMA("nothing")
        <:2>
        LEMMA("crazy")
    }

    //it gets the fundamentals right
    DOMAIN(01.06:LOW)
    {
        LEMMA("get","include")
        <:3>
        LEMMA("fundamental", "fundamental right","essential")
    }
}