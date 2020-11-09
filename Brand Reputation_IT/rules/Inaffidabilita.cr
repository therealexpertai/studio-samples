SCOPE SENTENCE
{
    //ci sono alcuni difetti
    DOMAIN(01.04:NORMAL)
    {
        SYNCON(9580)//@SYN: #9580# [difetto]
    }

    //è durato solo due mesi
    DOMAIN(01.04:NORMAL)
    {
        LEMMA("durare")
        <:4>
        LEMMA("mese","settimana","giorno")
    }

    //prodotti molto fragili
    DOMAIN(01.04:NORMAL)
    {
        ANCESTOR(136523)-LEMMA("insoddisfacente")//@SYN: #136523# [insufficiente]
    }

    //la cosa meno stabile che esista
    DOMAIN(01.04:NORMAL)
    {
        LEMMA("meno","poco")
        >>
        LIST(145137:1)//@SYN: #145137# [saldo]
    }

    //Le ventole fanno rumore
    DOMAIN(01.04:NORMAL)
    {
        SYNCON(100193220,103182696,293916)//@SYN: #100193220# [ventola] //@SYN: #103182696# [ventola] //@SYN: #293916# [sistema di raffreddamento]
        <:2>
        LEMMA("fare")
        <:2>
        LIST(100179448:1,1534)//@SYN: #100179448# [rumore] //@SYN: #1534# [confusione]
    }

    //la cpu surriscalda
    DOMAIN(01.04:NORMAL)
    {
        ANCESTOR(101183543)//@SYN: #101183543# [dispositivo]
        <:5>
        SYNCON(113150)//@SYN: #113150# [surriscaldare]
    }

    //alcuni pezzi si staccano da soli
    DOMAIN(01.04:NORMAL)
    {
        LEMMA("staccare","smontare","rimuovere","cadere")
        <:2>
        SYNCON(290430)//@SYN: #290430# [da solo]
    }

    //potenza scarsa
    DOMAIN(01.04:NORMAL)
    {
        LEMMA("potenza","lumen")
        <:5>
        LEMMA("basso","scarso")
    }

    //senza ragione
    DOMAIN(01.04:NORMAL)
    {
        SYNCON(388878)//@SYN: #388878# [senza]
        >>
        SYNCON(11366)//@SYN: #11366# [ragione]
    }

    //si è rotto
    DOMAIN(01.04:NORMAL)
    {
        TYPE(PRO)
        >>
        TYPE(AUX)
        <:3>
        LEMMA("rompere","staccare","smontare","rimuovere")
    }

    //non si accende più
    DOMAIN(01.04:NORMAL)
    {
        LEMMA("smettere","non")
        <:3>
        LEMMA("funzione","funzionare","accendere")
    }

    //non funziona
    DOMAIN(01.04:NORMAL)
    {
        LEMMA("smettere","non")
        <:3>
        LEMMA("funzione","funzionare","accendere")
    }

    //si blocca
    DOMAIN(01.04:NORMAL)
    {
        TYPE(PRO)
        >>
        SYNCON(113693)//@SYN: #113693# [fermare]
    }

    //è lento-inaffidabile
    DOMAIN(01.04:LOW)
    {
        SYNCON(178172,105270,333667,333668)//@SYN: #178172# [lento] //@SYN: #105270# [rompere] //@SYN: #333667# [inaffidabile] //@SYN: #333668# [inaffidabile]
    }

    //è un brand inaffidabile
    DOMAIN(01.04:LOW)
    {
        !ANCESTOR(384928,323623)//@SYN: #384928# [non] //@SYN: #323623# [poco o nulla]
        <:5>
        ANCESTOR(333667,333668,58094,58091)//@SYN: #333667# [inaffidabile] //@SYN: #333668# [inaffidabile] //@SYN: #58094# [inaffidabilità] //@SYN: #58091# [inaffidabilità]
    }

    //non è affidabile
    DOMAIN(01.04:LOW)
    {
        ANCESTOR(384928,323623)//@SYN: #384928# [non] //@SYN: #323623# [poco o nulla]
        <:5>
        ANCESTOR(142421:0,293670:0,65357,102689057,83505:0)//@SYN: #122507# [affidabile] //@SYN: #145137# [saldo] //@SYN: #142421# [immediato] //@SYN: #293670# [affidabile] //@SYN: #65357# [affidabilità] //@SYN: #102689057# [serietà] //@SYN: #83505# [affidabilità]
    }

    //non affidabile
    DOMAIN(01.04:LOW)
    {
        ANCESTOR(384928,323623)//@SYN: #384928# [non] //@SYN: #323623# [poco o nulla]
        <:5>
        LEMMA("versatile","affidabile") - SYNCON(142421,293670,65357,102689057,83505)//@SYN: #142421# [immediato] //@SYN: #293670# [affidabile] //@SYN: #65357# [affidabilità] //@SYN: #102689057# [serietà] //@SYN: #83505# [affidabilità]
    }

}