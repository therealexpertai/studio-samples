SCOPE SENTENCE IN SEGMENT (TITLE)
{
    //Novell neues Superbook B9: Sehr wenig Laptop fürs Geld
    IDENTIFY(PRODUCT)
    {
        @PRODUCT [ANCESTOR(100014799,5164) + TYPE(NPR)- SYNCON (UNKNOWN)]|[#1]
        <:2>
        @PRODUCT [TYPE(NPR)]|[#2]
        >>
        !PATTERN("\d+")
    }

     //Product
    IDENTIFY(PRODUCT)
    {
        @PRODUCT [ANCESTOR(100014799,5164) + TYPE(NPR)- SYNCON (UNKNOWN)]|[#1]
        <:2>
        @PRODUCT [TYPE(NPR)]|[#2]
        >>
        @PRODUCT [PATTERN("\d+")]|[#3]
    }

    //Novell R123-14IML (12TC002RGE) im Test:
    IDENTIFY(PRODUCT)
    {
        !ANCESTOR(100014799,5164) + TYPE(NPR)- SYNCON (UNKNOWN)
        <:3>
        @PRODUCT [TYPE(PRD,DEV)]
    }
 }

SCOPE SENTENCE
{
    //Novell hat den Fokus auf einen ruhigen Lüfter gelegt
    IDENTIFY(BRAND)
    {
        !SYNCON(588670)//@SYN: #588670# [mittels]
        <:2>
        !LEMMA("Ersatz", "ersetzen")
        >
        !KEYWORD("für")
        <:6>
        @BRAND [ANCESTOR(100014799,5164) + TYPE(NPR)- SYNCON (UNKNOWN,100000248)]|[SMARTENTRY] //@SYN: #100014799# [Lenovo] //@SYN: #5164# [Informatikbetrieb] //@SYN: #100000248# [Intel]
        AND NOT
        LIST(603100, 100199714, 118794, 173973)//@SYN: #603100# [im Gegensatz zu] //@SYN: #100199714# [Vergleich] //@SYN: #118794# [Konkurrenz] //@SYN: #173973# [Konkurrent]
    }
}