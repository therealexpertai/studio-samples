SCOPE SENTENCE IN SEGMENT(TITLE)
{
    //Seagate Superbook-14
    IDENTIFY(PRODUCT)
    {
        !ANCESTOR(388495,523749)+TYPE(NPR) //@SYN: #388495# [azienda informatica] //@SYN: #523749# [società di elettronica]
        >>
        @PRODUCT[ANCESTOR(102424752,100000068,101183543)+TYPE(NPR)] //@SYN: #102424752# [prodotto] //@SYN: #100000068# [computer] //@SYN: #101183543# [dispositivo]
    }

    //Seagate SUPPABOOK-14
    IDENTIFY(PRODUCT)
    {
        ANCESTOR(388495,523749)+TYPE(NPR) //@SYN: #388495# [azienda informatica] //@SYN: #523749# [società di elettronica]
        >>
        @PRODUCT[TYPE(NPR)-ANCESTOR(102424752,100000068,101183543)+SYNCON(UNKNOWN)]|[SEQUENCE] //@SYN: #102424752# [prodotto] //@SYN: #100000068# [computer] //@SYN: #101183543# [dispositivo]
    }
}

SCOPE SENTENCE
{
    //Il mio primo e probabilmente ultimo notebook della Seagate
    IDENTIFY(PRODUCT)
    {
        @BRAND[ANCESTOR(388495,523749)+TYPE(NPR)]|[SMARTENTRY] //@SYN: #388495# [azienda informatica] //@SYN: #523749# [società di elettronica]
        >>
        !ANCESTOR(102424752,100000068,101183543)+TYPE(NPR)//@SYN: #102424752# [prodotto] //@SYN: #100000068# [computer] //@SYN: #101183543# [dispositivo]
        >>
        !TYPE(NPR)-ANCESTOR(102424752:0,100000068,101183543)+SYNCON(UNKNOWN)
    }

    //Seagate Megapad
    IDENTIFY(PRODUCT)
    {
        @BRAND[ANCESTOR(388495,523749)+TYPE(NPR)]|[SMARTENTRY] //@SYN: #388495# [azienda informatica] //@SYN: #523749# [società di elettronica]
        >>
        @PRODUCT[ANCESTOR(102424752,100000068,101183543)+TYPE(NPR)] //@SYN: #102424752# [prodotto] //@SYN: #100000068# [computer] //@SYN: #101183543# [dispositivo]
        >>
        !ANCESTOR(102424752,100000068,101183543)+TYPE(NPR) //@SYN: #102424752# [prodotto] //@SYN: #100000068# [computer] //@SYN: #101183543# [dispositivo]
    }

    //Seagate MIXTA laptop
   IDENTIFY(PRODUCT)
    {
        @BRAND[ANCESTOR(388495,523749)+TYPE(NPR)]|[SMARTENTRY] //@SYN: #388495# [azienda informatica] //@SYN: #523749# [società di elettronica]
        >>
        @PRODUCT[ANCESTOR(102424752,100000068,101183543)+TYPE(NPR)]//@SYN: #102424752# [prodotto] //@SYN: #100000068# [computer] //@SYN: #101183543# [dispositivo]
        >>
        ANCESTOR(102424752,100000068,101183543)+TYPE(NPR) //@SYN: #102424752# [prodotto] //@SYN: #100000068# [computer] //@SYN: #101183543# [dispositivo]
    }

}