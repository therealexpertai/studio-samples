
SCOPE SENTENCE
{
	//desconfianza
	DOMAIN(01.04:NORMAL)
	{
        !LIST (EXPAND "negaciones.cl")
	    <
        SYNCON (98633,85071)//@SYN: #98633# [desconfianza] //@SYN: #85071# [suspicacia]
	}

	//Falta de fiabilidad
	DOMAIN(01.04:NORMAL)
	{
        LIST (EXPAND "negaciones.cl")
	    <:3>
        SYNCON(102689057,31386,126554,219744,102129)//@SYN: #102689057# [formalidad] //@SYN: #31386# [fiabilidad] //@SYN: #126554# [fiable] //@SYN: #219744# [confiable] //@SYN: #102129# [seguro]
	}

	//tener problemas/defectos/fallos
	DOMAIN(01.04:NORMAL)
	{
        !LIST (EXPAND "negaciones.cl")
	    <
        LIST(130776,97735, 294892)//@SYN: #130776# [poseer] //@SYN: #97735# [presentar] //@SYN: #294892# [otro]
        <:4>
        ANCESTOR(220715,39127,34006) - LEMMA("cuestión", "cosa")//@SYN: #220715# [defecto] //@SYN: #39127# [daño] //@SYN: #34006# [cuestión]
	}

	//tener dudas
	DOMAIN(01.04:LOW)
	{
        !LIST (EXPAND "negaciones.cl")
	    <
        SYNCON(251645)//@SYN: #251645# [tener dudas]
  	}

  	//sin algún motivo
	DOMAIN(01.04:LOW)
	{
        LIST (EXPAND "negaciones.cl")
	    <-3:3>
        SYNCON(76601,101710397,2046)//@SYN: #76601# [motivación] //@SYN: #101710397# [razón] //@SYN: #2046# [motivo]
  	}

  	//es lento, ineficaz ecc
	DOMAIN(01.04:LOW)
	{
        !LIST (EXPAND "negaciones.cl")
	    <:3>
	    LEMMA("ser", "estar")
	    >
	    LIST (67164,61185,64303,62205,86001)//@SYN: #67164# [lento] //@SYN: #61185# [ineficaz] //@SYN: #64303# [inútil] //@SYN: #62205# [incómodo] //@SYN: #86001# [pesado]
  	}

  	//tarda mucho en
	DOMAIN(01.04:LOW)
	{
        !LIST (EXPAND "negaciones.cl")
	    <:3>
		SYNCON(108501)//@SYN: #108501# [tardar]
		>
		SYNCON(76795,206465,206485,286423,76791,76792,76793,76794,76796)//@SYN: #76795# [mucho] //@SYN: #206465# [desmedidamente] //@SYN: #206485# [muchísimo] //@SYN: #286423# [excesivamente] //@SYN: #76791# [mucho] //@SYN: #76792# [mucho] //@SYN: #76793# [mucho] //@SYN: #76794# [mucho] //@SYN: #76796# [mucho]
  		>
  		KEYWORD("en")
  		>
  		TYPE(VER)
  	}

  	//va a trompicones
	DOMAIN(01.04:LOW)
	{
        !LIST (EXPAND "negaciones.cl")
	    <:3>
		LEMMA("ir", "funcionar", "trabajar")
		>
		KEYWORD("a")
		>>
  		SYNCON (245259)//@SYN: #245259# [trompicón]
  	}

  	//no funciona
	DOMAIN(01.04:NORMAL)
	{
        LIST (EXPAND "negaciones.cl")
	    <:3>
		SYNCON(2666,128483)//@SYN: #2666# [actuar] //@SYN: #128483# [marchar]
  		<
  		!LEMMA("satisfactoriamente")
  	}

  	//funciona mal
	DOMAIN(01.04:NORMAL)
	{
       SYNCON(2666,128483)//@SYN: #2666# [actuar] //@SYN: #128483# [marchar]
       >
       LIST(70166,252044,204648,206195,291514)//@SYN: #70166# [mal] //@SYN: #252044# [malamente] //@SYN: #204648# [lentamente] //@SYN: #206195# [terriblemente] //@SYN: #291514# [horrorosamente]
  	}
}
