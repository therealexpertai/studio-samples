SCOPE SENTENCE
{
    //laptop crapped out
    DOMAIN(01.04:NORMAL)
    {
        SYNCON(66118,92628,85321,86633) //@SYN: #66118# [pass out] //@SYN: #92628# [unreliable] //@SYN: #85321# [unreliable] //@SYN: #86633# [unreliable]
    }

    //Poor quality
    DOMAIN(01.04:NORMAL)
    {
        LEMMA("poor")
        >>
        LEMMA("quality")
    }

    //keyboard fails to work
    DOMAIN(01.04:NORMAL)
    {
        LEMMA("fail")
        <:3>
        LIST(76576) //@SYN: #76576# [work]
    }

    //Feels like it will fall apart
    DOMAIN(01.04:NORMAL)
    {
        LEMMA("feel like")
        <:4>
        ANCESTOR(67468,73854) //@SYN: #67468# [break] //@SYN: #73854# [break down]
    }

    //cheap feel
    DOMAIN(01.04:LOW)
    {
        LEMMA("cheap")
        AND
        LIST(147332,103955369,62576) //@SYN: #147332# [feel] //@SYN: #103955369# [sensation] //@SYN: #62576# [feel]
    }

    //hard disk is corrupted
    DOMAIN(01.04:NORMAL)
    {
        LEMMA("most")
        >>
        ANCESTOR(92628,85321,86631) //@SYN: #92628# [unreliable] //@SYN: #85321# [unreliable] //@SYN: #86631# [fallible]
    }

    //known issue
    DOMAIN(01.04:LOW)
    {
        LEMMA("many","hard drive","motherboard","board","hard disk","known")
        <:2>
        LEMMA("issue","corruption","corrupt","failure")
    }

    //defective motherboard
    DOMAIN(01.04:LOW)
    {
        LEMMA("defective")
        <:2>
        LEMMA("hard drive","motherboard","board","hard disk","known","many")
    }

    //they could not resolve the issue
    DOMAIN(01.04:LOW)
    {
        LEMMA("not")
        <:2>
        LEMMA("resolve")
    }

    //black screen of death
    DOMAIN(01.04:LOW)
    {
        LEMMA("screen")
        >>
        KEYWORD("of")
        >>
        LEMMA("death")
        OR
        KEYWORD("BSOD")
    }

    //inability to perform any simple task
    DOMAIN(01.04:LOW)
    {
        LEMMA("inability","unable")
        >>
        KEYWORD("to")
    }

    //not working
    DOMAIN(01.04:NORMAL)
    {
        SYNCON(193096)//@SYN: #193096# [not]
        <:4>

        LEMMA("work","working")
    }

    //laptop is dead
    DOMAIN(01.04:NORMAL)
    {
        ANCESTOR(100011019,100000068)//@SYN: #100011019# [machine] //@SYN: #100000068# [computer]
        <:2>
        SYNCON(81965)//@SYN: #81965# [inanimate]
    }

    //it was missing parts
    DOMAIN(01.04:LOW)
    {
        LEMMA("missing","miss")
        <:2>
        SYNCON(115989253)//@SYN: #115989253# [component]
    }

    //the laptop had physical damage
    DOMAIN(01.04:LOW)
    {
        LEMMA("physical")
        <:2>
        ANCESTOR(34140)//@SYN: #34140# [damage]
    }

    //it kept having problems after repair
    DOMAIN(01.04:LOW)
    {
        LEMMA("keep")
        <:2>
        LEMMA("have")
        <:2>
        LEMMA("problem")
        AND NOT
        KEYWORD("another brand")
    }

    //It doesn't seem to be very durable nor reliable
    DOMAIN(01.04:LOW)
    {
        SYNCON(193096)//@SYN: #193096# [not]
        <:4>
        SYNCON(191577)//@SYN: #191577# [very]
        <:4>
        LEMMA("durable","reliable")
    }

    //it's not reliable
    DOMAIN(01.04:LOW)
    {
        SYNCON(193096)//@SYN: #193096# [not]
        <:5>
        LIST(85314:1,102689057:1)//@SYN: #85314# [reliable] //@SYN: #102689057# [reliability]
    }

    //unreliability
    DOMAIN(01.04:LOW)
    {
        LIST(22754:2)//@SYN: #22754# [unreliability]
    }

    //screen is not fluid
    DOMAIN(01.04:LOW)
    {
        ANCESTOR(193074,193096)//@SYN: #193074# [less] //@SYN: #193096# [not]
        <:2>
        LEMMA("fluid","smooth")
    }

}