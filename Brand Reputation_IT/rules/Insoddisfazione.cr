SCOPE SENTENCE
{
   //2 stelle
   DOMAIN(01.02:HIGH)
    {
        PATTERN("[1-2]")
        >>
        LEMMA("stella")
    }

   //41%-100%
   DOMAIN(01.02:HIGH)
    {
        PATTERN("[0-4][0-9]\%\-\d{3}\%")
    }

   //25 su 100
   DOMAIN(01.02:HIGH)
    {
        PATTERN("[1-3][0-9]")
        >>
        KEYWORD("su")
        >>
        PATTERN("\w{3}")
    }


   //1 su 5
   DOMAIN(01.02:HIGH)
    {
        PATTERN("[1-2]")
        >>
        KEYWORD("su")
        >>
        PATTERN("[5]")
    }

   //43 su 100
   DOMAIN(01.02:HIGH)
    {
        PATTERN("[4][0-9]")
        >>
        KEYWORD("su")
        >>
        PATTERN("\w{3}")
    }

   //55%-100%
   DOMAIN(01.02:NORMAL)
    {
        PATTERN("[5][0-9]\%\-\d{3}\%")
    }

   //non mi piace
   DOMAIN(01.02:HIGH)
    {
        SYNCON(384928) //@SYN: #384928# [non]
        <:2>
        LEMMA("piacere")
    }

    //il primo e ultimo che acquisto
    DOMAIN(01.02:NORMAL)
    {
        LEMMA("primo")
        >>
        TYPE(CON)
        <:3>
        LEMMA("ultimo")
    }

    //fare le bizze
    DOMAIN(01.02:NORMAL)
    {
        KEYWORD("bizze")
    }

    //è fatto male
    DOMAIN(01.02:NORMAL)
    {
        LEMMA("fatto")
        >>
        LEMMA("male")
    }

    //non è così buono
    DOMAIN(01.02:NORMAL)
    {
        SYNCON(384928) //@SYN: #384928# [non]
        <:4>
        LEMMA("buono")
    }

    //scarsa qualità
    DOMAIN(01.02:NORMAL)
    {
        LEMMA("scarso","poco")
        >>
        LEMMA("qualità")
    }

    //costa troppo
    DOMAIN(01.02:NORMAL)
    {
        SYNCON(111044)//@SYN: #111044# [costare]
        >>
        SYNCON(384612)//@SYN: #384612# [molto]
    }

    //costoso
    DOMAIN(01.02:NORMAL)
    {
        SYNCON(166468,166477)//@SYN: #166468# [caro] //@SYN: #166477# [costoso]
    }

    //mette anni a caricare
    DOMAIN(01.02:NORMAL)
    {
        LEMMA("mettere")
        >>
        LEMMA("anno")
        >>
        TYPE(PRE)
    }

    //durerà massimo 3 ore
    DOMAIN(01.02:NORMAL)
    {
        LEMMA("durare")
        <:2>
        TYPE(PRE)
        <:2>
        LEMMA("massimo")
    }

    //la cosa più brutta che abbia mai visto
    DOMAIN(01.02:LOW)
    {
        TYPE(ART)
        >>
        LEMMA("cosa")
        >>
        SYNCON(297518)//@SYN: #297518# [più]
        >>
        TYPE(NOU,ADJ) - LIST(137200:99,138169:99,135727:99)//@SYN: #137200# [grazioso] //@SYN: #138169# [folgorante] //@SYN: #135727# [efficiente]
        <:3>
        TYPE(AUX)
        >>
        LEMMA("mai")
        >>
        LEMMA("vedere","comprato","acquistato")
    }

    //difettoso
    DOMAIN(01.02:LOW)
    {
        SYNCON(272088,267019,24486,157547,220047)//@SYN: #272088# [ingombrante] //@SYN: #267019# [voluminoso] //@SYN: #24486# [ostacolo] //@SYN: #157547# [ingombro] //@SYN: #220047# [imperfetto]
    }

    //PC SCADENTI
    DOMAIN(01.02:LOW)
    {
        ANCESTOR(126591,145660,145669)//@SYN: #126591# [complesso] //@SYN: #145660# [scadente]
    }

    //impossibile vederlo
    DOMAIN(01.02:LOW)
    {
        LEMMA("impossibile")
        >>
        TYPE(VER)
    }

    //sembra un portatile di 20 anni fa
    DOMAIN(01.02:LOW)
    {
        LEMMA("sembrare")
        <:3>
        TYPE(PRE)
        <:3>
        LEMMA("anno")
        >>
        SYNCON(291968)//@SYN: #291968# [fa]
    }

    //Mai più!
    DOMAIN(01.02:NORMAL)
    {
        SYNCON(390252)//@SYN: #390252# [mai]
        >>
        SYNCON(297518)//@SYN: #297518# [più]
    }

    //non giustifica il prezzo
    DOMAIN(01.02:NORMAL)
    {
        SYNCON(384928)//@SYN: #384928# [non]
        >>
        LEMMA("giustificare")
        <:3>
        SYNCON(100240673)//@SYN: #100240673# [costo]
    }

    //prezzi sono abbastanza alti
    DOMAIN(01.02:NORMAL)
    {
        SYNCON(100240673)//@SYN: #100240673# [costo]
        <:2>
        LEMMA("troppo","abbastanza","piuttosto")
        <:2>
        LIST(123143)//@SYN: #123143# [elevato]
    }

    //NON COMPRATE
    DOMAIN(01.02:NORMAL)
    {
        ANCESTOR(384928,323623)//@SYN: #384928# [non] //@SYN: #323623# [poco o nulla]
        <:2>
        SYNCON(103672)//@SYN: #103672# [acquistare]
    }

    //sono insoddisfatto
    DOMAIN(01.02:NORMAL)
    {
        ANCESTOR(333728:0,333729:0)//@SYN: #333728# [insoddisfatto] //@SYN: #333729# [insoddisfatto] //@SYN: #296043# [deludente]
    }

    //non mi soddisfa
    DOMAIN(01.02:NORMAL)
    {
        ANCESTOR(384928,323623)//@SYN: #384928# [non] //@SYN: #323623# [poco o nulla]
        <:5>
        ANCESTOR(119984:1)
    }

}