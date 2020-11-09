SCOPE SENTENCE
{
    //sicurezza
    DOMAIN(01.05:NORMAL)
    {
        LEMMA("sicurezza")
    }

    //processore velocissimo
    DOMAIN(01.05:NORMAL)
    {
        ANCESTOR(100003966)//@SYN: #100003966# [hardware]
        <:3>
        LEMMA("veloce")
    }

    //efficiente
    DOMAIN(01.05:NORMAL)
    {
        !LEMMA("meno")
        >>
        ANCESTOR(135727,135679)//@SYN: #135727# [efficiente] //@SYN: #135679# [efficace]
        OR
        SYNCON(102689057)//@SYN: #102689057# [serietà]
        <:2>
        !LEMMA("precisione")
    }

    //sofisticato
    DOMAIN(01.05:NORMAL)
    {
        KEYWORD("sofisticato","fluido")
    }

    //sinonimo di efficienza
    DOMAIN(01.05:HIGH)
    {
        LEMMA("sinonimo")
        >>
        TYPE(PRE)
        <>
        LIST(101034411,87)//@SYN: #101034411# [efficienza] //@SYN: #87# [qualità] //@SYN: #102689057# [serietà]
    }

    //solido
    DOMAIN(01.05:LOW)
    {
        !ANCESTOR(384928,323623)//@SYN: #384928# [non] //@SYN: #323623# [poco o nulla]
        <:5>
        SYNCON(145137,122507)//@SYN: #145137# [saldo] //@SYN: #122507# [affidabile]
    }

    //è affidabile
    DOMAIN(01.05:LOW)
    {
        !ANCESTOR(384928,323623)//@SYN: #384928# [non] //@SYN: #323623# [poco o nulla]
        <:5>
        ANCESTOR(142421:0,293670:0,65357,102689057,83505:0)//@SYN: #122507# [affidabile] //@SYN: #145137# [saldo] //@SYN: #142421# [immediato] //@SYN: #293670# [affidabile] //@SYN: #65357# [affidabilità] //@SYN: #102689057# [serietà] //@SYN: #83505# [affidabilità]
    }

    //affidabile
    DOMAIN(01.05:NORMAL)
    {
        !ANCESTOR(384928,323623)//@SYN: #384928# [non] //@SYN: #323623# [poco o nulla]
        <:5>
        LEMMA("versatile","affidabile") - SYNCON(142421,293670,65357,102689057,83505)//@SYN: #142421# [immediato] //@SYN: #293670# [affidabile] //@SYN: #65357# [affidabilità] //@SYN: #102689057# [serietà] //@SYN: #83505# [affidabilità]
    }

    //molto serio
    DOMAIN(01.05:NORMAL)
    {
        !ANCESTOR(384928,323623)//@SYN: #384928# [non] //@SYN: #323623# [poco o nulla]
        <:5>
        LEMMA("molto")
        >>
        ANCESTOR(142347)//@SYN: #142347# [serio]
    }

    //provvedere alla riparazione
    DOMAIN(01.05:NORMAL)
    {
        SYNCON(115123,105569)//@SYN: #115123# [provvedere] //@SYN: #105569# [sistemare]
        <:4>
        LIST(8301,103678,105569,10255)//@SYN: #8301# [protezione] //@SYN: #103678# [riparare] //@SYN: #105569# [sistemare] //@SYN: #10255# [aggiustamento]
    }

    //Serietà e Precisione
    DOMAIN(01.05:NORMAL)
    {
        !ANCESTOR(384928,323623,112564:0)//@SYN: #384928# [non] //@SYN: #323623# [poco o nulla]
        <:5>
        SYNCON(102689057,10257)//@SYN: #102689057# [serietà] //@SYN: #10257# [precisione]
    }

    //è una buona marca
    DOMAIN(01.05:LOW)
    {
        LEMMA("buono")
        <:2>
        SYNCON(76711)//@SYN: #76711# [marca]
    }

}
