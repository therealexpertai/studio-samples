SCOPE SENTENCE IN SEGMENT(TITLE)
{
    //Seagate Highbook-13 PC
    IDENTIFY(PRODUCT)
    {
        !ANCESTOR(37392:99,100014799:99,192145:99)+TYPE(NPR)-SYNCON(100000248) //@SYN: #37392# [electronics company] //@SYN: #100014799# [Lenovo] //@SYN: #192145# [computer company]
        >>
        @PRODUCT[ANCESTOR(102424752,100011019,100000068,18178)+TYPE(NPR)] //@SYN: #102424752# [products] //@SYN: #100011019# [machine] //@SYN: #100000068# [computer] //@SYN: #18178# [product]
         >>
        !PATTERN("[0-9]+")
   }

    //Seagate Highbook 13 PC
    IDENTIFY(PRODUCT)
    {
        !ANCESTOR(37392:99,100014799:99,192145:99)+TYPE(NPR)-SYNCON(100000248) //@SYN: #37392# [electronics company] //@SYN: #100014799# [Lenovo] //@SYN: #192145# [computer company]
        >>
        @PRODUCT[ANCESTOR(102424752,100011019,100000068,18178)+TYPE(NPR)]|[#1] //@SYN: #102424752# [products] //@SYN: #100011019# [machine] //@SYN: #100000068# [computer] //@SYN: #18178# [product]
         >>
        @PRODUCT[PATTERN("[0-9]+")]|[#2]
   }
}

SCOPE SENTENCE
{
    //That's ridiculous Seagate
    IDENTIFY(PRODUCT)
    {
        @BRAND[ANCESTOR(37392:99,100014799:99,192145:99)+TYPE(NPR)-SYNCON(100000248) - KEYWORD("i5","i7","i3")]|[TEXT] //@SYN: #104830453# [company]
        >>
        !ANCESTOR(100011019,100000068)+TYPE(NPR)
    }

    //the 2nd Seagate M65 laptop I have purchased
    IDENTIFY(PRODUCT)
    {
        @BRAND[ANCESTOR(37392:99,100014799:99,192145:99)+TYPE(NPR)-SYNCON(100000248) - KEYWORD("i5","i7","i3")]|[TEXT] //@SYN: #104830453# [company]
        >>
        @PRODUCT[ANCESTOR(102424752,100011019,100000068,18178) + TYPE(NPR)]//@SYN: #102424752# [products] //@SYN: #100011019# [machine] //@SYN: #100000068# [computer] //@SYN: #18178# [product]
        >>
        !PATTERN("[0-9]+")
    }

    //Seagate Superpad 619
    IDENTIFY(PRODUCT)
    {
        @BRAND[ANCESTOR(37392:99,100014799:99,192145:99)+TYPE(NPR)-SYNCON(100000248) - KEYWORD("i5","i7","i3")]|[TEXT] //@SYN: #104830453# [company]
        >>
        @PRODUCT[ANCESTOR(102424752,100011019,100000068,18178) + TYPE(NPR)]|[#1]//@SYN: #102424752# [products] //@SYN: #100011019# [machine] //@SYN: #100000068# [computer] //@SYN: #18178# [product]
        >>
        @PRODUCT[PATTERN("[0-9]+")]|[#2]
    }

    //I'm so disappointed with this H2 laptop
    IDENTIFY(PRODUCT)
    {
        @PRODUCT[ANCESTOR(102424752,100011019,100000068,18178) + TYPE(NPR)]//@SYN: #102424752# [products] //@SYN: #100011019# [machine] //@SYN: #100000068# [computer] //@SYN: #18178# [product]
        >>
        ANCESTOR(102424752,100011019,100000068,18178) + TYPE(NOU)
    }

    //Seagate QWERTY4 laptop PC
    IDENTIFY(PRODUCT)
    {
        @BRAND[ANCESTOR(37392:99,100014799:99,192145:99)+TYPE(NPR)-SYNCON(100000248) - KEYWORD("i5","i7","i3")]|[TEXT] //@SYN: #104830453# [company]
        >>
        @PRODUCT[TYPE(NPR)+SYNCON(UNKNOWN)]//@SYN: #102424752# [products] //@SYN: #100011019# [machine] //@SYN: #100000068# [computer] //@SYN: #18178# [product]
        >>
        ANCESTOR(102424752,100011019,100000068,18178) + TYPE(NOU)//@SYN: #102424752# [products] //@SYN: #100011019# [machine] //@SYN: #100000068# [computer] //@SYN: #18178# [product]
    }

    //The Seagate model NJK550 is reliable
    IDENTIFY(PRODUCT)
    {
        @BRAND[ANCESTOR(37392:99,100014799:99,192145:99)+TYPE(NPR)-SYNCON(100000248) - KEYWORD("i5","i7","i3")]|[TEXT] //@SYN: #104830453# [company]
        >>
        LEMMA("model")
        >>
        @PRODUCT[TYPE(NPR)+SYNCON(UNKNOWN)]//@SYN: #102424752# [products] //@SYN: #100011019# [machine] //@SYN: #100000068# [computer] //@SYN: #18178# [product]
    }

    //It's the NJK550 from Seagate
    IDENTIFY(PRODUCT)
    {
        @PRODUCT[TYPE(NPR)+SYNCON(UNKNOWN)]//@SYN: #102424752# [products] //@SYN: #100011019# [machine] //@SYN: #100000068# [computer] //@SYN: #18178# [product]
        >>
        TYPE(PRE)+KEYWORD("from","by")
        >>
        @BRAND[ANCESTOR(37392:99,100014799:99,192145:99)+TYPE(NPR)-SYNCON(100000248) - KEYWORD("i5","i7","i3")]|[TEXT] //@SYN: #104830453# [company]
    }

    //My Seagate iTec is an excellent PC
    IDENTIFY(PRODUCT)
    {
        @PRODUCT[ANCESTOR(102424752:1,100011019:1,100000068:1,18178:1)+TYPE(NPR)+SYNCON(UNKNOWN)] //@SYN: #102424752# [products] //@SYN: #100011019# [machine] //@SYN: #100000068# [computer] //@SYN: #18178# [product]
        <:4>
        ANCESTOR(102424752,100011019,100000068,18178) + TYPE(NOU)//@SYN: #102424752# [products] //@SYN: #100011019# [machine] //@SYN: #100000068# [computer] //@SYN: #18178# [product]
    }
}
