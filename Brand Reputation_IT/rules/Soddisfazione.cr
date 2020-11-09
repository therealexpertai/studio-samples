SCOPE SENTENCE
{
    //85 su 100
    DOMAIN(01.01:HIGH)
    {
        PATTERN("[7-9][0-9]")
        >>
        KEYWORD("su")
        >>
        PATTERN("\w{3}")
    }

    //5 su 5
    DOMAIN(01.01:HIGH)
    {
        PATTERN("[4-5]")
        >>
        KEYWORD("su")
        >>
        PATTERN("[5]")
    }

    //63 su 100
    DOMAIN(01.01:NORMAL)
    {
        PATTERN("[6][0-9]")
        >>
        KEYWORD("su")
        >>
        PATTERN("\w{3}")
    }

    //4 stelle
    DOMAIN(01.01:HIGH)
    {
        PATTERN("[4-5]")
        >>
        LEMMA("stella")
    }

    //3 stelle
    DOMAIN(01.01:NORMAL)
    {
        PATTERN("[3]")
        >>
        LEMMA("stella")
    }

    //78%-100%
    DOMAIN(01.01:HIGH)
    {
        PATTERN("[7-9][0-9]\%\-\d{3}\%")
    }

    //66%-100%
    DOMAIN(01.01:NORMAL)
    {
        PATTERN("[6][0-9]\%\-\d{3}\%")
    }

   //valore aggiunto
   DOMAIN(01.01:NORMAL)
    {
        LEMMA("gioiello","valore aggiunto")
    }

    //non da poco
    DOMAIN(01.01:NORMAL)
    {
       SYNCON(384928) //@SYN: #384928# [non]
       >>
       LEMMA("da poco")
    }

    //non esitare ad acquistarlo
    DOMAIN(01.01:NORMAL)
    {
       SYNCON(384928) //@SYN: #384928# [non]
       <:3>
       ANCESTOR(107825)//@SYN: #107825# [esitare]
       <:5>
       LIST(103672:99)//@SYN: #103672# [acquistare]
    }

    //a buon prezzo
    DOMAIN(01.01:NORMAL)
    {
        SYNCON(428861)//@SYN: #428861# [a buon prezzo]
    }

    //ottime caratteristiche
    DOMAIN(01.01:NORMAL)
    {
        ANCESTOR(256159)//@SYN: #256159# [ottimo]
    }

    //molto funzionale
    DOMAIN(01.01:NORMAL)
    {
        SYNCON(284499,384612,384051)//@SYN: #284499# [spesso] //@SYN: #384612# [molto] //@SYN: #384051# [molto]
        <:2>
        LIST(135727:99,288255)//@SYN: #135727# [efficiente] //@SYN: #288255# [possibilità]
    }

    //design fantastico
    DOMAIN(01.01:HIGH)
    {
        LEMMA("qualità","design")
        <:5>
        LEMMA("alto","fantastico")
    }

    //conveniente
    DOMAIN(01.01:LOW)
    {
        SYNCON(125649)//@SYN: #125649# [atto]
    }

    //l'ho preso ad un buon prezzo
    DOMAIN(01.01:HIGH)
    {
        LEMMA("buono")
        >>
        LEMMA("prezzo")
    }

    //vale il prezzo
    DOMAIN(01.01:HIGH)
    {
        LEMMA("valere")
        >>
        TYPE(ART)
        <:2>
        LEMMA("prezzo")
    }

    //mai stata così felice
    DOMAIN(01.01:HIGH)
    {
        SYNCON(390252)//@SYN: #390252# [mai]
        >>
        LEMMA("essere")
        >>
        SYNCON(293617)//@SYN: #293617# [così]
        >>
        ANCESTOR(135711)//@SYN: #135711# [buono]
    }

    //Computer fantastico
    DOMAIN(01.01:HIGH)
    {
        ANCESTOR(87966)//@SYN: #87966# [device]
        >>
        ANCESTOR(137339)//@SYN: #137339# [clamoroso]
    }

    //lo uso tutti i giorni
    DOMAIN(01.01:LOW)
    {
        LEMMA("usare","utilizzare")
        >>
        SYNCON(313985)//@SYN: #313985# [tutto]
        <:2>
        LEMMA("giorno","settimana","anno","mese")
    }

    //non posso lamentarmi
    DOMAIN(01.01:LOW)
    {
        SYNCON(384928)//@SYN: #384928# [non]
        >>
        TYPE(AUX)
        <:3>
        LEMMA("lamentare")
    }

    //Consigliatissimo!
    DOMAIN(01.01:HIGH)
    {
        SYNCON(470370)//@SYN: #470370# [consigliato]
    }

    //Il migliore!
    DOMAIN(01.01:LOW)
    {
        !ANCESTOR(384928,323623)//@SYN: #384928# [non] //@SYN: #323623# [poco o nulla]
        <:5>
        ANCESTOR(100157811,137200,167924,137252)-LEMMA("enorme")//@SYN: #100157811# [qualità] //@SYN: #137200# [grazioso] //@SYN: #167924# [pregevole] //@SYN: #137252# [grazioso]
    }

    //i numeri uno
    DOMAIN(01.01:NORMAL)
    {
        TYPE(ART)
        >>
        SYNCON(61606)//@SYN: #61606# [numero uno]
    }

    //mi piace tantissimo
    DOMAIN(01.01:NORMAL)
    {
        !ANCESTOR(384928,323623)//@SYN: #384928# [non] //@SYN: #323623# [poco o nulla]
        <:5>
        TYPE(PRO)
        >>
        SYNCON(110351)//@SYN: #110351# [piacere]
    }

    //più che positivo
    DOMAIN(01.01:NORMAL)
    {
        SYNCON(297518)//@SYN: #297518# [più]
        <:2>
        ANCESTOR(135686)//@SYN: #135686# [soddisfacente]
    }

    //qualità altissima
    DOMAIN(01.01:NORMAL)
    {
        LEMMA("qualità")
        <:4>
        ANCESTOR(123137)//@SYN: #123137# [alto]
    }

    //qualità davvero non indifferente
    DOMAIN(01.01:NORMAL)
    {
        LEMMA("qualità")
        <:4>
        SYNCON(139564)//@SYN: #139564# [non indifferente]
    }

    //offre tanti servizi
    DOMAIN(01.01:NORMAL)
    {
        LEMMA("offrire")
        <:4>
        SYNCON(384051)//@SYN: #384051# [molto]
        >>
        LEMMA("servizio")
    }

    //qualità ed affidabilità
    DOMAIN(01.01:NORMAL)
    {
        LEMMA("qualità")
        >>
        TYPE(CON)
        >>
        LEMMA("affidabilità")
    }

    //alla fine ne è valsa la pena
    DOMAIN(01.01:NORMAL)
    {
        !ANCESTOR(384928,323623)//@SYN: #384928# [non] //@SYN: #323623# [poco o nulla]
        <:5>
        !ANCESTOR(224922)//@SYN: #224922# [enorme]
        <:2>
        !KEYWORD("per","non","mi")
        <:2>
        LIST(161554,11484,284277,285398)//@SYN: #161554# [valere la pena] //@SYN: #11484# [piacere] //@SYN: #284277# [soddisfatto] //@SYN: #285398# [soddisfatto] //@SYN: #323623# [poco o nulla]
    }

    //enorme soddisfazione
    DOMAIN(01.01:HIGH)
    {
        ANCESTOR(224922)//@SYN: #224922# [enorme]
        >>
        LIST(11484)//@SYN: #11484# [piacere]
    }

    //funzionante e performante
    DOMAIN(01.01:LOW)
    {
        SYNCON(296944,361207)//@SYN: #296944# [funzionante] //@SYN: #361207# [performante]
    }

    //pienamente soddisfatto
    DOMAIN(01.01:LOW)
    {
        !ANCESTOR(384928,323623)//@SYN: #384928# [non] //@SYN: #323623# [poco o nulla]
        <:5>
        ANCESTOR(284277,135686,166393,106098,106100,254112)//@SYN: #284277# [soddisfatto] //@SYN: #135686# [soddisfacente] //@SYN: #166393# [soddisfacente] //@SYN: #106098# [soddisfare] //@SYN: #106100# [soddisfare] //@SYN: #254112# [appagare]
    }

}
