
SCOPE SENTENCE
{
	//aceptable
	DOMAIN(01.06:LOW)
	{
        !LIST (EXPAND "negaciones.cl")
	    <
        LIST(78720,78347,3143)//@SYN: #78720# [normal] //@SYN: #78347# [neutro] //@SYN: #3143# [aceptable]
	}

	//decente
	DOMAIN(01.06:NORMAL)
	{
		LEMMA("decente", "decentemente")
	}

	//indiferente, indiferencia
	DOMAIN(01.06:LOW)
	{
        !LIST (EXPAND "negaciones.cl")
	    <
 		LIST(117577280,223245)//@SYN: #117577280# [indiferencia] //@SYN: #223245# [indiferente]
 	}

	//medianamente > ADJ
	DOMAIN(01.06:NORMAL)
	{
		SYNCON(293738,204753)//@SYN: #293738# [medianamente] //@SYN: #204753# [medianamente]
		>>
		TYPE(ADJ)
	}

	//algo > ADJ
	DOMAIN(01.06:LOW)
	{
		KEYWORD("algo", "un poco")
		>>
		TYPE(ADJ)
	}

	//no demasiado bien
	DOMAIN(01.06:LOW)
	{
		LIST (EXPAND "negaciones.cl")
		>
		SYNCON(38132)//@SYN: #38132# [demasiado]
		>
		LEMMA("bien")
	}

//	//podría mejorar
//	DOMAIN(01.06:NORMAL)
//	{
//		!LIST (EXPAND "negaciones.cl")
//		>
//		LEMMA("poder") + TYPE(VER:present_conditional, VER:past_conditional,AUX)
//		>
//		SYNCON(101953,57481,30564)//@SYN: #101953# [mejorar] //@SYN: #57481# [mejorar] //@SYN: #30564# [perfeccionar]
//	}


	//podría ser más ADJ
	DOMAIN(01.06:NORMAL)
	{
		!LIST (EXPAND "negaciones.cl")
		>
		LEMMA("poder") + TYPE(VER:present_conditional, VER:past_conditional,AUX)
		>
		LEMMA("ser")
		>
		LEMMA("más")
		>>
		TYPE(ADJ)
	}

	//no son ADJ, pero...
	DOMAIN(01.06:LOW)
	{
		LIST (EXPAND "negaciones.cl")
		>
		LEMMA("ser", "estar")
		>
		TYPE(ADJ)
		>
		LEMMA("mas", "pero")
	}

	//cosas mejorables
	DOMAIN(01.06:LOW)
	{
		TYPE(NOU)
		<-3:3>
		SYNCON(85423)//@SYN: #85423# [mejorable]
	}

	//me queda indiferente
	DOMAIN(01.06:NORMAL)
	{
		SYNCON(44140)//@SYN: #44140# [quedar]
		<:3>
		SYNCON(223245,78325) - LEMMA("indistinto")//@SYN: #223245# [indiferente] //@SYN: #78325# [neutral]
	}
}
