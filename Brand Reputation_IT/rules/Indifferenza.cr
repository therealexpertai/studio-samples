SCOPE SENTENCE
{
    //55 su 100
    DOMAIN(01.06:NORMAL)
    {
        PATTERN("[5][0-9]")
        >>
        KEYWORD("su")
        >>
        PATTERN("\w{3}")
    }

    //non mi ha impressionato
    DOMAIN(01.06:NORMAL)
    {
        SYNCON(384928)//@SYN: #384928# [non]
        <:3>
        TYPE(AUX)
        >>
        ANCESTOR(119953,110679)//@SYN: #119953# [sorprendere] //@SYN: #110679# [impressionare]
    }

    //non è impressionante
    DOMAIN(01.06:NORMAL)
    {
        SYNCON(384928)//@SYN: #384928# [non]
        <:3>
        LEMMA("essere")
        >>
        ANCESTOR(119953,110679)//@SYN: #119953# [sorprendere] //@SYN: #110679# [impressionare]
    }

    //mi ha lasciato indifferente
    DOMAIN(01.06:NORMAL)
    {
        SYNCON(45339,139558,139533,139540,139559,178126,167054,122081,166927,139562,139561,139563,117577280,52107)//@SYN: #45339# [indifferente] //@SYN: #139558# [indifferente] //@SYN: #139533# [indifferente] //@SYN: #139540# [indifferente] //@SYN: #139559# [indifferente] //@SYN: #178126# [indifferente] //@SYN: #167054# [impassibile] //@SYN: #122081# [abulico] //@SYN: #166927# [obiettivo] //@SYN: #139562# [indifferente] //@SYN: #139561# [indifferente] //@SYN: #139563# [indifferente] //@SYN: #117577280# [indifferenza] //@SYN: #52107# [indifferenza]
    }
}