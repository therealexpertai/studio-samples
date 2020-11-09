
SCOPE SENTENCE
{
	//für etwas nicht gedacht
	DOMAIN(01.04:NORMAL)
	{
        KEYWORD("für", "bei")
        <:3>
        TYPE(NOU)
        AND
        KEYWORD(EXPAND "negation.cl")
		<:3>
        LIST(578471,139210:99,38868)//@SYN: #578471# [ideal] //@SYN: #139210# [berechtigt] //@SYN: #38868# [geeignet]
	}

	//abstuerzen
	DOMAIN(01.04:NORMAL)
	{
	    SYNCON(147655)//@SYN: #147655# [hinfällig]
	    <-3:3>
        SYNCON(130250,19130)//@SYN: #130250# [abstürzen] //@SYN: #19130# [abstürzen]
	}

	//Schwierigkeit und Probleme
	DOMAIN(01.04:NORMAL)
	{
        !KEYWORD(EXPAND "negation.cl")
	    <:3>
	    ANCESTOR(142374,12402)//@SYN: #142374# [Schwierigkeit] //@SYN: #12402# [Problem]
	}

	//von Angaben / angegebenen NOU enfernt
	DOMAIN(01.04:NORMAL)
	{
		KEYWORD("von")
		<:3>
		LIST(100011028,14491)//@SYN: #100011028# [Information] //@SYN: #14491# [angeben]
        <-6:6>
	    SYNCON(166894,38478,159894,120228)//@SYN: #166894# [weit] //@SYN: #38478# [entfernt] //@SYN: #159894# [entfernen] //@SYN: #120228# [entfernt]
	}

	//von angegebenen NOU enfernt
	DOMAIN(01.04:NORMAL)
	{
		KEYWORD("von")
		<:3>
		PATTERN("(angegeben(?:\w+)?)")
	    <-7:7>
		PATTERN("(annäher(?:\w+)?)")
	}

	//von Angaben / angegebenen nicht annähernd
	DOMAIN(01.04:NORMAL)
	{
		KEYWORD("von")
		<:3>
		LIST(100011028,14491)//@SYN: #100011028# [Information] //@SYN: #14491# [angeben]
        <-7:7>
        KEYWORD(EXPAND "negation.cl")
	    <:3>
	    SYNCON(21590,16863,73263,580198)//@SYN: #21590# [annähernd] //@SYN: #16863# [nähern] //@SYN: #73263# [näher] //@SYN: #580198# [nah]
	}

	//von Angaben / angegebenen nicht annähernd
	DOMAIN(01.04:NORMAL)
	{
		KEYWORD("von")
		<:3>
		PATTERN("(angegeben(?:\w+)?)")
		AND
        KEYWORD(EXPAND "negation.cl")
	    <:3>
		PATTERN("(annäher(?:\w+)?)")
	}

	//es gab Probleme
	DOMAIN(01.04:NORMAL)
	{
		KEYWORD("es")
		<-3:3>
		LEMMA("geben")
        AND
        !KEYWORD(EXPAND "negation.cl")
	    <:3>
		ANCESTOR(12402)//@SYN: #12402# [Problem]
	}

	//nicht akzeptabel
	DOMAIN(01.04:NORMAL)
	{
		KEYWORD(EXPAND "negation.cl")
	    <:3>
	    SYNCON (104010)//@SYN: #104010# [akzeptabel]
	}

	//funktionieren nicht
	DOMAIN(01.04:NORMAL)
	{
		KEYWORD(EXPAND "negation.cl")
	    <-3:3>
	    LIST(16946,15819,16914)//@SYN: #16946# [gehen] //@SYN: #15819# [laufen] //@SYN: #16914# [arbeiten]
	}

	//skeptisch
	DOMAIN(01.04:LOW)
	{
		!KEYWORD(EXPAND "negation.cl")
	    <:3>
	    LEMMA("skeptisch")
	}

	//unzuverlässig
	DOMAIN(01.04:LOW)
	{
		!KEYWORD(EXPAND "negation.cl")
	    <:3>
	    SYNCON(147654,611099,102195)//@SYN: #147654# [unzuverlässig] //@SYN: #611099# [unzuverlässig] //@SYN: #102195# [Unzuverlässigkeit]
		OR
		KEYWORD(EXPAND "negation.cl")
	    <:3>
	    SYNCON(102689057,588963,169086,596281)//@SYN: #102689057# [Verlässlichkeit] //@SYN: #588963# [zuverlässig] //@SYN: #169086# [seriös] //@SYN: #596281# [zuverlässig]
	}

	//Produkt ist schlecht
	DOMAIN(01.04:NORMAL)
	{
		ANCESTOR(100003966,61062,17506)//@SYN: #100003966# [Hardware] //@SYN: #61062# [Produkt] //@SYN: #17506# [Produkt]
		<-5:5>
		!KEYWORD(EXPAND "negation.cl")
	    <:3>
	    SYNCON(113065,155900,155901,120251)//@SYN: #113065# [schlecht] //@SYN: #155900# [mau] //@SYN: #155901# [widrig] //@SYN: #120251# [böse]
	}


}
