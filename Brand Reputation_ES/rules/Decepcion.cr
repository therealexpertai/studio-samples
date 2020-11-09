
SCOPE SENTENCE
{
	//la calidad no era la esperada / la que pensaba
	DOMAIN(01.03:NORMAL)
	{
        LIST(80:99)//@SYN: #80# [característica]
        AND
        LIST (EXPAND "negaciones.cl")
        <:5>
        TYPE(ART)
        <:3>
        SYNCON (217246,39778,132395,131055)//@SYN: #217246# [esperado] //@SYN: #39778# [esperar] //@SYN: #132395# [pensar] //@SYN: #131055# [creer]
	}

	//no es como esperaba
	DOMAIN(01.03:NORMAL)
	{
        LIST (EXPAND "negaciones.cl")
        <:5>
        LEMMA("como")
        <:3>
        SYNCON (217246,39778,132395,131055)//@SYN: #217246# [esperado] //@SYN: #39778# [esperar] //@SYN: #132395# [pensar] //@SYN: #131055# [creer]
	}

	//una lástima que...
	DOMAIN(01.03:NORMAL)
	{
        !LIST (EXPAND "negaciones.cl")
        <:5>
        LEMMA("lástima")
    }

    //delusión, decepción
	DOMAIN(01.03:NORMAL)
	{
        !LIST (EXPAND "negaciones.cl")
        <:5>
        SYNCON(218504,18665,100621206,37470,37468,37469,40468) - LIST(61216,90795,106525,61181) - LEMMA("insatisfacción")//@SYN: #61216# [fantasía] //@SYN: #90795# [problema] //@SYN: #106525# [sueño] //@SYN: #61181# [ilusión] //@SYN: #218504# [decepcionado] //@SYN: #18665# [ilusión] //@SYN: #100621206# [desencanto] //@SYN: #37470# [insatisfacción] //@SYN: #37468# [decepcionante] //@SYN: #37469# [frustrar] //@SYN: #40468# [decepcionar]
             //@SYN: #18665# [ilusión] //@SYN: #100621206# [desencanto] //@SYN: #37470# [insatisfacción] //@SYN: #218504# [decepcionado] //@SYN: #37468# [decepcionante] //@SYN: #37469# [frustrar] //@SYN: #40468# [decepcionar]
    }

    //no a la altura de mis espectativas
	DOMAIN(01.03:NORMAL)
	{
        LIST (EXPAND "negaciones.cl")
        <:5>
        SYNCON(134995)//@SYN: #134995# [a la altura de]
        >
        SYNCON(101362683,53184,101361939)//@SYN: #101362683# [esperanza] //@SYN: #53184# [contemplación] //@SYN: #101361939# [expectación]
     }
}