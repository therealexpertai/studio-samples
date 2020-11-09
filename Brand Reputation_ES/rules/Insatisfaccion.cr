
SCOPE SENTENCE
{
	//mala calidad/aspecto/NOU
	DOMAIN(01.02:NORMAL)
	{
        !LIST (EXPAND "negaciones.cl")
	    <
	    LIST(41399,296432,12061) - LEMMA("acabado")//@SYN: #41399# [arruinado] //@SYN: #296432# [pésimo] //@SYN: #12061# [horrible]
	    <-3:3>
	    TYPE(NOU)
	}

	//devolución/dovelver
	DOMAIN(01.02:LOW)
	{
        !LIST (EXPAND "negaciones.cl")
	    <
	    LEMMA("devolución", "restitución", "devolver", "restituir")
	}

	//insatisfacción / no satisfecho
	DOMAIN(01.02:LOW)
	{
		LEMMA("insatisfacción")
		OR
		SYNCON(39579,61750) - LEMMA("alcanzado")//@SYN: #39579# [insatisfecho] //@SYN: #61750# [inadecuado]
        OR
        LIST (EXPAND "negaciones.cl")
	    <:3>
	    LIST(102408,27235,102418,206792)//@SYN: #102408# [satisfacción] //@SYN: #27235# [satisfecho] //@SYN: #102418# [satisfacer] //@SYN: #206792# [satisfactoriamente]
	}

	//haber/tener un "pero"
	DOMAIN(01.02:NORMAL)
	{
        !LIST (EXPAND "negaciones.cl")
	    <
	    LEMMA("tener", "haber")
	    >
	    LEMMA("pero") + TYPE(NOU)
	}

	//no me ha gustado
	DOMAIN(01.02:NORMAL)
	{
	    LIST (EXPAND "negaciones.cl")
	    <:5>
	    TYPE(PRO)
	    <:3>
        ANCESTOR(1157,90076,81460)//@SYN: #1157# [gustar] //@SYN: #90076# [atraer] //@SYN: #81460# [gustar]
	}

	//es un despropósito/escándalo
	DOMAIN(01.02:NORMAL)
	{
	    !LIST (EXPAND "negaciones.cl")
	    <:5>
	    LEMMA("ser")
	    <:3>
 		SYNCON(41325)//@SYN: #41325# [despropósito]
 	}

 	//poco recomendable
	DOMAIN(01.02:NORMAL)
	{
	    LIST (EXPAND "negaciones.cl")
	    <:5>
	    SYNCON(95326)//@SYN: #95326# [recomendable]
	    OR
	    LEMMA("poco")
	    <:3>
 		SYNCON(95326)//@SYN: #95326# [recomendable]
 	}

 	//no recomiendo
	DOMAIN(01.02:NORMAL)
	{
	    LIST (EXPAND "negaciones.cl")
	    <:5>
	    SYNCON(7274, 2304,219667)//@SYN: #7274# [aconsejar] //@SYN: #2304# [recomendar] //@SYN: #219667# [recomendado]
 	}

 	//no lo compren
	DOMAIN(01.02:NORMAL)
	{
	    LIST (EXPAND "negaciones.cl") - KEYWORD("sin")
	    <:5>
	    SYNCON(73764)//@SYN: #73764# [comprar]
 	}

 	//contra/problema
	DOMAIN(01.02:LOW)
	{
	    !LIST (EXPAND "negaciones.cl")
	    <:5>
	    ANCESTOR (14892)//@SYN: #14892# [dificultad]
	}

	//bateria no dura
	DOMAIN(01.02:NORMAL)
	{
		LEMMA("batería", "carga")
		AND
	    LIST (EXPAND "negaciones.cl")
	    <:5>
	    SYNCON(32388) - LEMMA("venir")//@SYN: #32388# [durar]
	}

	//inaceptable
	DOMAIN(01.02:NORMAL)
	{
		SYNCON(61751)//@SYN: #61751# [inaceptable]
		OR
	    LIST (EXPAND "negaciones.cl")
	    <:5>
	    ANCESTOR(3143)//@SYN: #3143# [aceptable]
	}


}
