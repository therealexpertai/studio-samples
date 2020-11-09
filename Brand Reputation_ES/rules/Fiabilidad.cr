
SCOPE SENTENCE
{
	//parece bueno, transimite fiabilidad
	DOMAIN(01.05:NORMAL)
	{
	    !LIST (EXPAND "negaciones.cl")
	    <
        LIST(132273,100205555,100017,112240,30815)//@SYN: #132273# [parecer] //@SYN: #100205555# [sensación] //@SYN: #100017# [impresión] //@SYN: #112240# [transmitir] //@SYN: #30815# [transmitir]
	    <-3:3>
	    !LIST (EXPAND "negaciones.cl")
	    <
        LIST(18438,10052,128469,126554,31386,102689057)//@SYN: #18438# [bastante] //@SYN: #10052# [eficaz] //@SYN: #128469# [eficiente] //@SYN: #126554# [fiable] //@SYN: #31386# [fiabilidad] //@SYN: #102689057# [formalidad]
	}

	//no va dar problemas
	DOMAIN(01.05:NORMAL)
	{
	    LIST (EXPAND "negaciones.cl")
	    <:5>
        ANCESTOR(14892) - SYNCON (UNKNOWN)//@SYN: #14892# [dificultad]
        OR
        LIST (EXPAND "negaciones.cl")
        <:5>
        LEMMA("problema")
	}

	//perfecto para
	DOMAIN(01.05:NORMAL)
	{
	    !LIST (EXPAND "negaciones.cl")
	    <:5>
        LIST(85428,52883,52895,53577)//@SYN: #85428# [perfecto] //@SYN: #52883# [ilustre] //@SYN: #52895# [extraordinario] //@SYN: #53577# [extraordinario]
		<:2>
		KEYWORD("para")
		>
		TYPE(VER,NOU)
	}

	//excelente
	DOMAIN(01.05:LOW)
	{
		!LIST (EXPAND "negaciones.cl")
	    <:5>
	    LIST(53577,85428,52883,52895,36865)//@SYN: #53577# [extraordinario] //@SYN: #85428# [perfecto] //@SYN: #52883# [ilustre] //@SYN: #52895# [extraordinario] //@SYN: #36865# [rápido]
	}

	//fiable / fiabilidad
	DOMAIN(01.05:LOW)
	{
		!LIST (EXPAND "negaciones.cl")
	    <:5>
		SYNCON(31386,102689057,126554,219744,102129)//@SYN: #31386# [fiabilidad] //@SYN: #102689057# [formalidad] //@SYN: #126554# [fiable] //@SYN: #219744# [confiable] //@SYN: #102129# [seguro]
	}

	//(tiene) buen/a + NOU
	DOMAIN(01.05:LOW)
	{
		!LIST (EXPAND "negaciones.cl")
	    <:5>
		ANCESTOR (10052)//@SYN: #10052# [eficaz]
		>
		TYPE(NOU)
		AND NOT
		( SYNCON(135005,208132,69292,30741)//@SYN: #135005# [a pesar de] //@SYN: #208132# [no obstante] //@SYN: #69292# [lástima] //@SYN: #30741# [compasión]
		OR
		LIST (EXPAND "negaciones.cl")
		>
		LEMMA("comprar"))
	}

	//cómodo de llevar
	DOMAIN(01.05:NORMAL)
	{
	    !LIST (EXPAND "negaciones.cl")
	    <
        SYNCON(37062,53806)//@SYN: #37062# [sencillo] //@SYN: #53806# [facilidad]
        <-4:4>
		SYNCON(3300,1670)//@SYN: #3300# [llevar] //@SYN: #1670# [transportar]
	}

	//calidad alta
	DOMAIN(01.05:NORMAL)
	{
		SYNCON (100185957)//@SYN: #100185957# [calidad]
	    <-5:5>
	    !LIST (EXPAND "negaciones.cl")
	    >
	    LEMMA("alto", "elevado")
	}

	//fluidez
	DOMAIN(01.05:NORMAL)
	{
		!LIST (EXPAND "negaciones.cl")
	    >
		LEMMA("fluidez")
	}

	//componentes de calidad
	DOMAIN(01.05:NORMAL)
	{
		ANCESTOR(100859965:0,101183543)//@SYN: #100859965# [componente] //@SYN: #101183543# [aparato]
		<:5>
		KEYWORD("de")
		>>
		LEMMA("calidad", "cualidad")
	}

	//funciona perfectamente
	DOMAIN(01.05:NORMAL)
	{
		TYPE(VER)
		>
		SYNCON (205993,204897,205299)//@SYN: #205993# [a la perfección] //@SYN: #204897# [a punto de caramelo] //@SYN: #205299# [por excelencia]
	}

	//destaca en
	DOMAIN(01.05:NORMAL)
	{
		!LIST (EXPAND "negaciones.cl")
		<
		SYNCON (71575,39456)//@SYN: #71575# [destacar] //@SYN: #39456# [sobresalir]
		<:3>
		KEYWORD("en")
	}
}
