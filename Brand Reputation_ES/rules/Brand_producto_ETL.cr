SCOPE SENTENCE IN SEGMENT (TITLE)
{
    //No compren el Seagate 14Z990-V
    IDENTIFY(PRODUCT)
    {
        @PRODUCT [ANCESTOR(645,100014799,100136778) + TYPE(NPR)- SYNCON (UNKNOWN)]|[#1]//@SYN: #645# [empresa de informática] //@SYN: #100014799# [Lenovo]
        <:2>
        @PRODUCT [TYPE(NPR)]|[#2]
        >>
        !PATTERN("\d+")
    }

     //Seagate 14-dq1234ns
    IDENTIFY(PRODUCT)
    {
        @PRODUCT [ANCESTOR(100014799,645,100136778) + TYPE(NPR)- SYNCON (UNKNOWN)]|[#1]
        <:2>
        @PRODUCT [TYPE(NPR)]|[#2]
        >>
        @PRODUCT [PATTERN("\d+")]|[#3]
    }

     //Llevo usando Seagate D15 unos días y debo decir que estoy muy contento
    IDENTIFY(PRODUCT)
    {
        !ANCESTOR(100014799,645,100136778) + TYPE(NPR)- SYNCON (UNKNOWN)//@SYN: #100136778# [LG Group]
        <:3>
        @PRODUCT [TYPE(PRD,DEV)]
    }
 }

 SCOPE SENTENCE
{
     //Llevo una semana con este portátil de Seagate
    IDENTIFY(BRAND)
    {
        @BRAND [ANCESTOR(100014799,645,100136778) + TYPE(NPR)- SYNCON (UNKNOWN)]|[SMARTENTRY] //@SYN: #100014799# [Lenovo] //@SYN: #645# [empresa de informática]
        AND NOT
        LIST(135158,218695)//@SYN: #135158# [en cambio] //@SYN: #218695# [comparado]    }
    }
}