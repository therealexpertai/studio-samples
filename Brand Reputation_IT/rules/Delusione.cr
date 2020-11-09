SCOPE SENTENCE
{
    //non ne vale la pena
    DOMAIN(01.03:NORMAL)
    {
        SYNCON(384928) //@SYN: #384928# [non]
        >>
        SYNCON(161554)//@SYN: #161554# [valere la pena]
    }

    //mi ci avevano fatto credere
    DOMAIN(01.03:NORMAL)
    {
        TYPE(AUX)
        >>
        SYNCON(105190)//@SYN: #105190# [fingere]
    }

    //complesso da usare
    DOMAIN(01.03:LOW)
    {
        LEMMA("difficile","complesso")
        <:2>
        LEMMA("uso","usare","utilizzo","utilizzare")
    }

    //va migliorato
    DOMAIN(01.03:LOW)
    {
        TYPE(AUX)
        >>
        SYNCON(106546)//@SYN: #106546# [migliorare]
    }

    //Per non parlare di
    DOMAIN(01.03:NORMAL)
    {
        TYPE(PRE)
        >>
        SYNCON(384928)//@SYN: #384928# [non]
        >>
        LEMMA("parlare")
        >>
        TYPE(ADV,PRE)
    }

    //meno buono di
    DOMAIN(01.03:NORMAL)
    {
        LEMMA("meno")
        >>
        LEMMA("buono","bello")
    }

    //assistenza farraginosa e lenta
    DOMAIN(01.03:LOW)
    {
        SYNCON(11541)//@SYN: #11541# [assistenza]
        <:5>
        ANCESTOR(178172)//@SYN: #178172# [lento]
    }

    //SUPPORTO ZERO
    DOMAIN(01.03:NORMAL)
    {
        SYNCON(11541,40184)//@SYN: #11541# [assistenza] //@SYN: #40184# [aiuto]
        >>
        KEYWORD("zero","0")
    }

    //non ho risolto
    DOMAIN(01.03:LOW)
    {
        SYNCON(384928)//@SYN: #384928# [non]
        >>
        TYPE(AUX)
        <:3>
        LEMMA("risolto","risolvere")
    }

    //Pensate io abbia risolto il problema?
    DOMAIN(01.03:LOW)
    {
        !LIST(384928,314287)//@SYN: #384928# [non] //@SYN: #314287# [nessuno]
        <:5>
        LEMMA("problema")
    }

    //è un prodotto deludente
    DOMAIN(01.03:LOW)
    {
        !ANCESTOR(384928,323623)//@SYN: #384928# [non] //@SYN: #323623# [poco o nulla]
        <:5>
        ANCESTOR(180603,360571,360573,100621206,59933:0,296043,110343,111108,111109)//@SYN: #180603# [deluso] //@SYN: #360571# [deluso] //@SYN: #360573# [deluso] //@SYN: #100621206# [delusione] //@SYN: #59933# [delusione] //@SYN: #296043# [deludente] //@SYN: #110343# [disattendere] //@SYN: #111108# [deludere] //@SYN: #111109# [deludere]
    }

    //prodotto deludente
    DOMAIN(01.03:NORMAL)
    {
        !ANCESTOR(384928,323623)//@SYN: #384928# [non] //@SYN: #323623# [poco o nulla]
        <:5>
        ANCESTOR(296043,101121708)//@SYN: #333728# [insoddisfatto] //@SYN: #333729# [insoddisfatto] //@SYN: #296043# [deludente]
    }
}