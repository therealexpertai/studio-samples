
SCOPE SENTENCE
{
	//es bueno
	DOMAIN(01.01:NORMAL)
	{
	    !LIST (EXPAND "negaciones.cl")
	    <
        LEMMA("ser", "estar")
        >
        LIST(16139,10052,220307,102426,15791)//@SYN: #16139# [bien] //@SYN: #10052# [eficaz] //@SYN: #220307# [positivo] //@SYN: #102426# [satisfactorio] //@SYN: #15791# [bonito]
	}

	//estoy contento
	DOMAIN(01.01:NORMAL)
	{
	    !LIST (EXPAND "negaciones.cl")
	    <
        LEMMA("ser", "estar", "muy")
        >
		SYNCON(32308,27235)//@SYN: #32308# [feliz] //@SYN: #27235# [satisfecho]
	}

	//estoy satisfecho / satisfacción
	DOMAIN(01.01:NORMAL)
	{
	    !LIST (EXPAND "negaciones.cl")
	    <:3>
		LIST(27235,102418,102426)//@SYN: #27235# [satisfecho] //@SYN: #102418# [satisfacer] //@SYN: #102426# [satisfactorio]
		OR
		!LIST (EXPAND "negaciones.cl")
	    <:3>
		LIST(100352126,102426,206792)//@SYN: #100352126# [satisfacción] //@SYN: #102426# [satisfactorio] //@SYN: #206792# [satisfactoriamente]
	}

	//valió la pena
	DOMAIN(01.01:NORMAL)
	{
	    !LIST (EXPAND "negaciones.cl")
	    <
        SYNCON(335443)//@SYN: #335443# [valer la pena]
	}

	//una maravilla, a maravilla
	DOMAIN(01.01:NORMAL)
	{
	    !LIST (EXPAND "negaciones.cl")
	    <-5:5>
        LEMMA("maravilla")
	}

	//recomiendo 100%
	DOMAIN(01.01:NORMAL)
	{
	    !LIST (EXPAND "negaciones.cl")
	    <:5>
        SYNCON(138592,1372)//@SYN: #138592# [recomendar] //@SYN: #1372# [evidenciar]
        >
        KEYWORD("100%")
	}

	//recomiendo mucho
	DOMAIN(01.01:NORMAL)
	{
	    !LIST (EXPAND "negaciones.cl")
	    <:5>
        SYNCON(138592,1372)//@SYN: #138592# [recomendar] //@SYN: #1372# [evidenciar]
        >
        LIST(76792,205544)//@SYN: #76792# [mucho] //@SYN: #205544# [absolutamente]
	}

	//me encanta
	DOMAIN(01.01:NORMAL)
	{
	    !LIST (EXPAND "negaciones.cl")
	    <:5>
	    TYPE(PRO)
	    >
        ANCESTOR(1157,90076)//@SYN: #1157# [gustar] //@SYN: #90076# [atraer]
	}

	//cumple con las especificaciones
	DOMAIN(01.01:NORMAL)
	{
	    !LIST (EXPAND "negaciones.cl")
	    <:5>
	    SYNCON(36175)//@SYN: #36175# [cumplir]
	    >
        SYNCON(50703)//@SYN: #50703# [especificación]
	}

	//muy rápido/silencioso ecc
	DOMAIN(01.01:LOW)
	{
	    !LIST (EXPAND "negaciones.cl")
	    <:5>
	   	SYNCON(77250)//@SYN: #77250# [muy]
	   	>
	   	LIST(24432,7610,67964,36865,10052,37062,133302,133235,16141)//@SYN: #24432# [silencioso] //@SYN: #7610# [orgulloso] //@SYN: #67964# [ligero] //@SYN: #36865# [rápido] //@SYN: #10052# [eficaz] //@SYN: #37062# [sencillo] //@SYN: #133302# [rápidamente] //@SYN: #133235# [fácilmente] //@SYN: #16141# [bien]
	}

	//muy recomendable
	DOMAIN(01.01:NORMAL)
	{
	    !LIST (EXPAND "negaciones.cl")
	    <:5>
	    SYNCON(95326)//@SYN: #95326# [recomendable]
	}

 	//lo recomiendo
	DOMAIN(01.01:NORMAL)
	{
	    !LIST (EXPAND "negaciones.cl")
	    <:5>
	    SYNCON(7274, 2304,219667)//@SYN: #7274# [aconsejar] //@SYN: #2304# [recomendar] //@SYN: #219667# [recomendado]
 	}

 	//relación calidad-precio buena
	DOMAIN(01.01:NORMAL)
	{
		SYNCON(308150)//@SYN: #308150# [relación calidad / precio]
		AND
	    !LIST (EXPAND "negaciones.cl")
	    <:5>
	    LIST(18434,18938,17906)//@SYN: #18434# [bueno] //@SYN: #18938# [barí] //@SYN: #17906# [mejor]
 	}

 	//aconsejo comprar
	DOMAIN(01.01:NORMAL)
	{
		!LIST (EXPAND "negaciones.cl")
	    <:5>
   	    SYNCON(7274, 2304,219667)//@SYN: #7274# [aconsejar] //@SYN: #2304# [recomendar] //@SYN: #219667# [recomendado]
		>
		LIST(73763,73764)//@SYN: #73763# [adquisición] //@SYN: #73764# [comprar]
	}
}
