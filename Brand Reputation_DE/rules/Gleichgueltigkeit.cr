
SCOPE SENTENCE
{
	//sollte kein Problem haben
	DOMAIN(01.06:NORMAL)
	{
        PATTERN("(soll(?:\w+)?)", "(sollt(?:\w+)?)")
        <>
        KEYWORD(EXPAND "negation.cl")
	    <:3>
	    ANCESTOR(12402)//@SYN: #12402# [Problem]
	}

	//nicht schlecht
	DOMAIN(01.06:NORMAL)
	{
        KEYWORD(EXPAND "negation.cl")
	    <:3>
	    LIST(113065)//@SYN: #113065# [schlecht]
	}

	//gleichgültig
	DOMAIN(01.06:NORMAL)
	{
        !KEYWORD(EXPAND "negation.cl")
	    <:3>
	    SYNCON(96281,49297)//@SYN: #96281# [unbeteiligt] //@SYN: #49297# [Gleichgültigkeit]
	}

	//verbesserungswürdig
	DOMAIN(01.06:NORMAL)
	{
        !KEYWORD(EXPAND "negation.cl")
	    <:3>
	    LEMMA("verbesserungswürdig")
	}

	//sollte verbessert werden / ist zu verbessern
	DOMAIN(01.06:NORMAL)
	{
		LEMMA("sein", "sollen")
		<>
        !KEYWORD(EXPAND "negation.cl")
	    <:3>
	    SYNCON(14884,14897)//@SYN: #14884# [verbessern] //@SYN: #14897# [korrigieren]
	}

	//akzeptabel
	DOMAIN(01.06:NORMAL)
	{
		!KEYWORD(EXPAND "negation.cl")
	    <:3>
	    LIST(104010, 30819)//@SYN: #104010# [akzeptabel] //@SYN: #30819# [neutral]
	}

	// ohne große Schwächen
	DOMAIN(01.06:NORMAL)
	{
		!KEYWORD(EXPAND "negation.cl")
	    <:3>
	    KEYWORD("ohne")
	    >
	    LIST(21884,139013)//@SYN: #21884# [groß] //@SYN: #139013# [prominent]
		>
		ANCESTOR(657,12402)//@SYN: #12402# [Problem]
	}

	// ausreichend + ADJ/NOU
	DOMAIN(01.06:NORMAL)
	{
		!KEYWORD(EXPAND "negation.cl")
	    <:3>
	    SYNCON (578557,577019)//@SYN: #578557# [ausreichend] //@SYN: #577019# [ausreichend]
	    >>
	    TYPE(ADJ,NOU)
	}

	// nicht so gut
	DOMAIN(01.06:LOW)
	{
		KEYWORD(EXPAND "negation.cl")
	    <:3>
	    KEYWORD("so")
	    >>
	    TYPE(ADJ)
	}

	// gewöhnungsbedürftig
	DOMAIN(01.06:LOW)
	{
		!KEYWORD(EXPAND "negation.cl")
	    <:3>
	    SYNCON (48868)//@SYN: #48868# [gewöhnungsbedürftig]
	}

	// tut was er soll
	DOMAIN(01.06:NORMAL)
	{
		!KEYWORD(EXPAND "negation.cl")
	    <:3>
	    LEMMA("tun", "machen")
	    <:3>
	    KEYWORD("was")
	    <:5>
	    LEMMA("sollen")
	}

	// wäre definitiv besser gewesen
	DOMAIN(01.06:LOW)
	{
		!KEYWORD(EXPAND "negation.cl")
	    <-3:3>
	    TYPE(AUX)
	    <:3>
	    //LIST(27762,27763)//@SYN: #27762# [besser] //@SYN: #27763# [besser]
	    TYPE(ADJ:C)
	    <:5>
	    LEMMA("sein")
	}

	//ohne merklichen Verzug
	DOMAIN(01.06:NORMAL)
	{
		KEYWORD(EXPAND "negation.cl")
	    <:3>
	    SYNCON (70390,70385)//@SYN: #70390# [spürbar] //@SYN: #70385# [wahrnehmbar]
		<:2>
		TYPE(NOU)
	}

	//nicht perfekt
	DOMAIN(01.06:LOW)
	{
		KEYWORD(EXPAND "negation.cl")
	    <:3>
	    SYNCON (101962,78206,596362)//@SYN: #101962# [perfekt] //@SYN: #78206# [perfekt] //@SYN: #596362# [perfekt]
	}

	//im Mittelfeld einordnen
	DOMAIN(01.06:NORMAL)
	{
		KEYWORD("im", "in")
		<:3>
		SYNCON (104981213,117625)//@SYN: #104981213# [Mittelfeld] //@SYN: #117625# [Mittelfeld]
		AND
		SYNCON (133059,16022,17359,133090)//@SYN: #133059# [anordnen] //@SYN: #16022# [stellen] //@SYN: #17359# [stehen] //@SYN: #133090# [typisieren]
	}

	//in Ordnung
	DOMAIN(01.06:NORMAL)
	{
		!KEYWORD(EXPAND "negation.cl")
		<:3>
		SYNCON (588654,75404)//@SYN: #588654# [in Ordnung]
	}

	//nicht ganz
	DOMAIN(01.06:LOW)
	{
		KEYWORD(EXPAND "negation.cl")
		<:3>
		LEMMA("ganz")
	}

	//etwas +ADJ
	DOMAIN(01.06:LOW)
	{
		KEYWORD("etwas")
		>
		!KEYWORD(EXPAND "negation.cl")
		<:3>
		TYPE(ADJ)
	}

	//nicht ADJ, aber auch nicht ADJ
	DOMAIN(01.06:NORMAL)
	{
		KEYWORD(EXPAND "negation.cl")
		<:3>
		TYPE(ADJ)
		>
		KEYWORD("aber", "sondern")
		>
		KEYWORD(EXPAND "negation.cl")
		<:3>
		TYPE(ADJ)
	}
}
