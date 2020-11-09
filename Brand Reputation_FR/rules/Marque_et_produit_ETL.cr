SCOPE SENTENCE IN SEGMENT(TITLE)
{

  // PRODUCT
    IDENTIFY(PRODUCT)
    {
        !ANCESTOR(117349)+TYPE(NPR) //@SYN: #117349# [société informatique]
        >>
        @PRODUCT[ANCESTOR(102424752,100000068,101183543)+TYPE(NPR)] //@SYN: #102424752# [produit] //@SYN: #100000068# [calculateur] //@SYN: #101183543# [dispositif]
        >>
        !TYPE(NPR)+SYNCON(UNKNOWN)
        >>
        !PATTERN("\d+")
    }

    //PC Ultra-portable Novell Megabook 14"
    IDENTIFY(PRODUCT)
    {
        !ANCESTOR(117349)+TYPE(NPR) //@SYN: #117349# [société informatique]
        >>
        @PRODUCT[ANCESTOR(102424752,100000068,101183543)+TYPE(NPR)]|[#1] //@SYN: #102424752# [produit] //@SYN: #100000068# [calculateur] //@SYN: #101183543# [dispositif]
        >>
        @PRODUCT[TYPE(NPR)+SYNCON(UNKNOWN)]|[#2]
        >>
        @PRODUCT[PATTERN("\d+")]|[#3]
    }

    //Novell Shift 3 FS123-45
    IDENTIFY(PRODUCT)
    {
        !ANCESTOR(117349)+TYPE(NPR) //@SYN: #117349# [société informatique]
        >>
        @PRODUCT[ANCESTOR(102424752,100000068,101183543)+TYPE(NPR)]|[#1] //@SYN: #102424752# [produit] //@SYN: #100000068# [calculateur] //@SYN: #101183543# [dispositif]
        >>
        @PRODUCT[TYPE(NPR)+SYNCON(UNKNOWN)]|[#2]
        >>
        !PATTERN("\d+")
    }

    IDENTIFY(PRODUCT)
    {
        ANCESTOR(117349)+TYPE(NPR)//@SYN: #117349# [société informatique]
        >>
        @PRODUCT[ANCESTOR(102424752,100000068,101183543)+TYPE(NPR)]|[SEQUENCE]
    }

    IDENTIFY(PRODUCT)
    {
        TYPE(NPR)+SYNCON(UNKNOWN)
        >>
        @PRODUCT[ANCESTOR(102424752,100000068,101183543)+TYPE(NPR)]|[SEQUENCE]
        >>
        TYPE(NPR)+SYNCON(UNKNOWN)
    }


    //Superbook Novell S340-14
    IDENTIFY(PRODUCT)
    {
        TYPE(NPR)+SYNCON(UNKNOWN)
        >>
        @PRODUCT[ANCESTOR(117349)+TYPE(NPR)]|[SEQUENCE]//@SYN: #117349# [société informatique]
        >>
        TYPE(NPR)+SYNCON(UNKNOWN)
    }

    //Novell GH56 Laptop 3
    IDENTIFY(PRODUCT)
    {
        !TYPE(NPR)+SYNCON(UNKNOWN)
        >>
        @PRODUCT[ANCESTOR(117349)+TYPE(NPR)]|[SEQUENCE]//@SYN: #117349# [société informatique]
        >>
        TYPE(NPR)+SYNCON(UNKNOWN)
        >>
        PATTERN("\d+.?")
    }


    //Novell GL123GU-45RB.
    IDENTIFY(PRODUCT)
    {
        !TYPE(NPR)+SYNCON(UNKNOWN)
        >>
        @PRODUCT[ANCESTOR(117349)+TYPE(NPR)]|[SEQUENCE]//@SYN: #117349# [société informatique]
        >>
        TYPE(NPR)+SYNCON(UNKNOWN)
        >>
        !PATTERN("\d+")
    }

    IDENTIFY(PRODUCT)
    {
        TYPE(NPR)+SYNCON(UNKNOWN)
        >>
        @PRODUCT[ANCESTOR(102424752,100000068,101183543)+TYPE(NPR)]|[SEQUENCE]
        >>
        !TYPE(NPR)+SYNCON(UNKNOWN)
    }


    IDENTIFY(PRODUCT)
    {
        !TYPE(NPR)+SYNCON(UNKNOWN)
        <<
        @PRODUCT[ANCESTOR(102424752,100000068,101183543)+TYPE(NPR)]|[SEQUENCE]
        >>
        TYPE(NPR)+SYNCON(UNKNOWN)
        >>
        !PATTERN("\d+")
    }


    //Avis utilisateurs: Novell Superbook 514
    IDENTIFY(PRODUCT)
    {
        !ANCESTOR(117349)+TYPE(NPR) //@SYN: #117349# [société informatique]
        >>
        @PRODUCT[ANCESTOR(102424752,100000068,101183543)+TYPE(NPR)] |[SEQUENCE]//@SYN: #102424752# [produit] //@SYN: #100000068# [calculateur] //@SYN: #101183543# [dispositif]
        >>
       PATTERN("\d+")
    }


    // BRAND
    IDENTIFY(PRODUCT)
    {
        @BRAND[ANCESTOR(117349)+TYPE(NPR)]|[SMARTENTRY]//@SYN: #117349# [société informatique]
        >
        ANCESTOR(102424752,100000068,101183543)+TYPE(NPR)
    }


    IDENTIFY(PRODUCT)
    {
        @BRAND[ANCESTOR(117349)+TYPE(NPR)]|[SMARTENTRY]//@SYN: #117349# [société informatique]
        >
        !ANCESTOR(102424752,100000068,101183543)+TYPE(NPR)
    }
}


SCOPE SENTENCE
{
    IDENTIFY(PRODUCT)
    {
        @BRAND[ANCESTOR(117349)+TYPE(NPR)]|[SMARTENTRY]//@SYN: #117349# [société informatique]
        >
        ANCESTOR(102424752,100000068,101183543)+TYPE(NPR)
    }

    //Ce PC de la marque Novell est beau, et très puissant
    IDENTIFY(PRODUCT)
    {
        @BRAND[ANCESTOR(117349)+TYPE(NPR)]|[SMARTENTRY]//@SYN: #117349# [société informatique]
        >
        !ANCESTOR(102424752,100000068,101183543)+TYPE(NPR)
    }


    IDENTIFY(PRODUCT)
    {
        KEYWORD("marque")
        >>
        TYPE(PNT)
        >>
        @BRAND[ANCESTOR(117349)+TYPE(NPR)]|[SMARTENTRY]//@SYN: #117349# [société informatique]
        >
        !ANCESTOR(102424752,100000068,101183543)+TYPE(NPR)
    }

    //Marque: Novell
    IDENTIFY(PRODUCT)
    {
        KEYWORD("marque")
        >>
        TYPE(PNT)
        >>
        @BRAND[ANCESTOR(100000068,102424752,101183543)+TYPE(NPR)]|[TEXT]//@SYN: #100000068# [calculateur] //@SYN: #102424752# [produit] //@SYN: #101183543# [dispositif]
        >
        !ANCESTOR(102424752,100000068,101183543)+TYPE(NPR)
    }
}