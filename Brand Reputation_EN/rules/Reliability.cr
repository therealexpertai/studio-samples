SCOPE SENTENCE
{
    //reliable, dependable
    DOMAIN(01.05:HIGH)
    {
        !KEYWORD("nor","quite")
        >>
        ANCESTOR(85314,95218,95216,95215)//@SYN: #85314# [reliable] //@SYN: #95218# [reliable] //@SYN: #95216# [reliable] //@SYN: #95215# [trustworthy]
        <-5:5>
        !SYNCON(193096)//@SYN: #193096# [not]
    }

    //never had any issues
    DOMAIN(01.05:NORMAL)
    {
        LEMMA("never")
        <:3>
        LEMMA("have","experience")
        <:3>
        LEMMA("issue","corruption","corrupt","failure")
    }

    //going strong
    DOMAIN(01.05:NORMAL)
    {
        LEMMA("go")
        >>
        LEMMA("strong","well","awesome")
    }

    //it hardly gave me any trouble
    DOMAIN(01.05:NORMAL)
    {
        LEMMA("hardly")
        <:3>
        LEMMA("give")
        <:3>
        LEMMA("trouble")
    }

    //I had no issues
    DOMAIN(01.05:NORMAL)
    {
        LEMMA("have")
        <:2>
        KEYWORD("no")
        <:2>
        LEMMA("issue")
    }

    //runs like a champ
    DOMAIN(01.05:NORMAL)
    {
        LEMMA("work","run")
        <:2>
        LEMMA("like")
        <:2>
        LEMMA("champ","charm")
    }

    //No slowing down
    DOMAIN(01.05:NORMAL)
    {
        LEMMA("no")
        <:3>
        LEMMA("slow","slowing")
        >>
        KEYWORD("down")
    }

    //never failed me or left me
    DOMAIN(01.05:NORMAL)
    {
        LEMMA("never")
        <:5>
        LEMMA("fail","leave")
        >>
        TYPE(PRO)
    }

    //reliable
    DOMAIN(01.05:LOW)
    {
        !SYNCON(193096)//@SYN: #193096# [not]
        <:5>
        LIST(102689057:1)//@SYN: #85314# [reliable] //@SYN: #102689057# [reliability]
    }

    //more fixable
    DOMAIN(01.05:LOW)
    {
        !SYNCON(193096)//@SYN: #193096# [not]
        <:5>
        LEMMA("repairability","repairable","fixable")
    }

    //run without a hitch
    DOMAIN(01.05:LOW)
    {
        LEMMA("without")
        <:3>
        ANCESTOR(17090,79214,18604)//@SYN: #17090# [hitch] //@SYN: #79214# [impediment] //@SYN: #18604# [obstacle]
    }

}