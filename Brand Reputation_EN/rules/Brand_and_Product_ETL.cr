SCOPE SENTENCE IN SEGMENT(TITLE)
{
    //HP Stream-14
    IDENTIFY(PRODUCT)
    {
        !ANCESTOR(37392:99,100014799:99,192145:99)+TYPE(NPR)-SYNCON(100000248) //@SYN: #37392# [electronics company] //@SYN: #100014799# [Lenovo] //@SYN: #192145# [computer company]
        >>
        @PRODUCT[ANCESTOR(102424752,100011019,100000068,18178)+TYPE(NPR)] //@SYN: #102424752# [products] //@SYN: #100011019# [machine] //@SYN: #100000068# [computer] //@SYN: #18178# [product]
    }
}

SCOPE SENTENCE
{
    //Hewlett-Packard
    IDENTIFY(PRODUCT)
    {
        @BRAND[ANCESTOR(37392:99,100014799:99,192145:99)+TYPE(NPR)-SYNCON(100000248) - KEYWORD("i5","i7","i3")]|[SMARTENTRY] //@SYN: #37392# [electronics company] //@SYN: #100014799# [Lenovo] //@SYN: #192145# [computer company]
        >>
        !ANCESTOR(100011019,100000068)+TYPE(NPR)
    }

    //Apple
    IDENTIFY(PRODUCT)
    {
        !ANCESTOR(37392:99,100014799:99,192145:99) + TYPE(NPR) - SYNCON(100000248)//@SYN: #37392# [electronics company] //@SYN: #100014799# [Lenovo] //@SYN: #192145# [computer company]
        >>
        @BRAND [ANCESTOR(37392:99,100014799:99,192145:99) + TYPE(NPR) - SYNCON(100000248) - KEYWORD("i5","i7","i3")]|[SMARTENTRY]//@SYN: #37392# [electronics company] //@SYN: #100014799# [Lenovo] //@SYN: #192145# [computer company]
        <:2>
        PATTERN(".\d+")
    }

    //HP Elitebook
    IDENTIFY(PRODUCT)
    {
        @BRAND [ANCESTOR(37392:99,100014799:99,192145:99) + TYPE(NPR) - SYNCON(100000248) - KEYWORD("i5","i7","i3")]|[SMARTENTRY]//@SYN: #37392# [electronics company] //@SYN: #100014799# [Lenovo] //@SYN: #192145# [computer company]
        >>
        @PRODUCT [ANCESTOR(102424752,100011019,100000068,18178) + TYPE(NPR)]//@SYN: #102424752# [products] //@SYN: #100011019# [machine] //@SYN: #100000068# [computer] //@SYN: #18178# [product]
    }

    //HP Elitebook notebook
    IDENTIFY(PRODUCT)
    {
        @BRAND [ANCESTOR(37392:99,100014799:99,192145:99) + TYPE(NPR) - SYNCON(100000248) - KEYWORD("i5","i7","i3")]|[SMARTENTRY]//@SYN: #37392# [electronics company] //@SYN: #100014799# [Lenovo] //@SYN: #192145# [computer company]
        >>
        @PRODUCT [TYPE(NPR)+SYNCON(UNKNOWN)]//@SYN: #102424752# [products] //@SYN: #100011019# [machine] //@SYN: #100000068# [computer] //@SYN: #18178# [product]
        >>
        ANCESTOR(102424752,100011019,100000068,18178) + TYPE(NOU)//@SYN: #102424752# [products] //@SYN: #100011019# [machine] //@SYN: #100000068# [computer] //@SYN: #18178# [product]
    }

}