SCOPE SENTENCE
{
    //Rated 3 stars
    DOMAIN(01.01:NORMAL)
    {
        LEMMA("rate")
        <:4>
        KEYWORD("3")
        >>
        LEMMA("star")
    }

    //Rated with 5 stars
    DOMAIN(01.01:HIGH)
    {
        LEMMA("rate")
        <:4>
        PATTERN("[4-5]")
        >>
        LEMMA("star")
    }

    //Rated with 5 stars
    DOMAIN(01.01:NORMAL)
    {
        !LEMMA("rate")
        <:4>
        PATTERN("[3-5]")
        >>
        LEMMA("star")
    }

    //fast responses
    DOMAIN(01.01:NORMAL)
    {
        LEMMA("great","fast")
        >>
        LEMMA("support","service","response")
    }

    //love the quality
    DOMAIN(01.01:HIGH)
    {
        LEMMA("love")
        <:3>
        SYNCON(78652)//@SYN: #78652# [quality]
    }

    //peace of mind
    DOMAIN(01.01:HIGH)
    {
        SYNCON(34580)//@SYN: #34580# [peace]
    }

    //I LOVE IT!
    DOMAIN(01.01:HIGH)
    {
        ANCESTOR(113494)//@SYN: #113494# [v. of positive feelings]
        >>
        TYPE(PRO)
    }

    //laptop is very fast
    DOMAIN(01.01:HIGH)
    {
        LIST(191577)//@SYN: #191577# [very]
        >>
        ANCESTOR(86684)//@SYN: #86684# [fast]
    }

    //Dell "lovers"
    DOMAIN(01.01:NORMAL)
    {
        ANCESTOR(44735,42846:0) - LEMMA("radical")//@SYN: #44735# [disciple]
        <-5:5>
        !SYNCON(193096)//@SYN: #193096# [not]
    }

    //excellent product
    DOMAIN(01.01:NORMAL)
    {
        ANCESTOR(94510)//@SYN: #94510# [superior]
        >>
        LEMMA("product")
    }

    //it's a superior laptop
    DOMAIN(01.01:NORMAL)
    {
        ANCESTOR(94510)//@SYN: #94510# [superior]
        >>
        ANCESTOR(100011019,100000068)//@SYN: #100011019# [machine] //@SYN: #100000068# [computer]
    }

    //does everything I need
    DOMAIN(01.01:NORMAL)
    {
        LEMMA("do")
        <:2>
        KEYWORD("everything")
        <:3>
        TYPE(PRO)
        <:2>
        LEMMA("need")
    }

    //notebook has been a lifesaver
    DOMAIN(01.01:LOW)
    {
        !SYNCON(193096)//@SYN: #193096# [not]
        <-5:5>
        LEMMA("easy","comfortable","lifesaver","lightweight","compact","shine")
    }

    //not heavy
    DOMAIN(01.01:LOW)
    {
        LEMMA("not")
        >>
        LEMMA("heavy")
    }

    //you get what you pay for
    DOMAIN(01.01:HIGH)
    {
        KEYWORD("you get what you pay for")
    }

    //This was a definite plus
    DOMAIN(01.01:LOW)
    {
        LEMMA("definite")
        >>
        LEMMA("plus")
    }

    //sleek design
    DOMAIN(01.01:NORMAL)
    {
        LEMMA("sleek")
        >>
        LEMMA("design")
    }

    //NO plastic
    DOMAIN(01.01:LOW)
    {
        KEYWORD("no plastic")
    }

    //has the functions and options you would need
    DOMAIN(01.01:NORMAL)
    {
        LEMMA("function","option","component","feature")
        <:4>
        TYPE(PRO)
        <:2>
        LEMMA("need")
    }

    //it works well
    DOMAIN(01.01:NORMAL)
    {
        SYNCON(191684)//@SYN: #191684# [well]
        <-3:3>
        LEMMA("work")
    }

    //HIGHLY recommend
    DOMAIN(01.01:HIGH)

    {
        SYNCON(191316)//@SYN: #191316# [highly]
        >>
        SYNCON(166317)//@SYN: #166317# [recommend]
    }

    //This laptop satisfies me
    DOMAIN(01.01:LOW)
    {
        !SYNCON(193096)//@SYN: #193096# [not]
        <:5>
        ANCESTOR(117054581:0,73984:2,87586,84547)//@SYN: #117054581# [satisfaction]
    }

    //keys are well spaced
    DOMAIN(01.01:LOW)
    {
        TYPE(AUX)
        >>
        SYNCON(191684)//@SYN: #191684# [well]
        >>
        TYPE(ADJ,VER)
    }

    //it's great for multitasking
    DOMAIN(01.01:LOW)
    {
        SYNCON(90806)//@SYN: #90806# [great]
        >>
        KEYWORD("for")
        >>
        TYPE(NOU,VER)
    }

    //give an edge
    DOMAIN(01.01:LOW)
    {
        LEMMA("give")
        <:5>
        TYPE(ART)
        >>
        LEMMA("edge")
    }

    //this is where the laptop wins some points
    DOMAIN(01.01:LOW)
    {
        LEMMA("win")
        <:2>
        LEMMA("point")
    }

    //this laptop is worth having
    DOMAIN(01.01:LOW)
    {
        LEMMA("worth")
        >>
        LEMMA("have","buy","purchase") + TYPE(VER)
    }

    //good value for the price
    DOMAIN(01.01:LOW)
    {
        !ANCESTOR(193074,193096)//@SYN: #193074# [less] //@SYN: #193096# [not]
        <:5>
        LEMMA("good")
        >>
        LEMMA("value")
        OR
        !ANCESTOR(193074,193096)//@SYN: #193074# [less] //@SYN: #193096# [not]
        <:5>
        LEMMA("fair trade")
    }

    //screen is not fluid
    DOMAIN(01.01:LOW)
    {
        !ANCESTOR(193074,193096)//@SYN: #193074# [less] //@SYN: #193096# [not]
        <:5>
        LEMMA("fluid","smooth","responsive")
    }

}
