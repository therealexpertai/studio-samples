
SCOPE SENTENCE
{
	//gute Leistungen
	DOMAIN(01.05:NORMAL)
	{
		!KEYWORD(EXPAND "negation.cl")
		<:4>
        LIST(51055,152096)//@SYN: #51055# [bon] //@SYN: #152096# [exklusiv]
        <:3>
        ANCESTOR(119959:99)//@SYN: #119959# [Leistung]
	}

	//gute alltagsleistungen (Komposita)
	DOMAIN(01.05:NORMAL)
	{
		!KEYWORD(EXPAND "negation.cl")
		<:4>
        LIST(51055,152096)//@SYN: #51055# [bon] //@SYN: #152096# [exklusiv]
        <:3>
        ANCESTOR (119959:99)//@SYN: #119959# [Leistung]
	}

	//versprechen besser/hoher + NOU
	DOMAIN(01.05:NORMAL)
	{
		!KEYWORD(EXPAND "negation.cl")
		<:4>
        SYNCON(13496)//@SYN: #13496# [zusagen]
        <:4>
        LIST(36191:99,27762:99,51055:99,173392:99)//@SYN: #36191# [eigens] //@SYN: #27762# [besser] //@SYN: #51055# [bon] //@SYN: #173392# [hoch]
		<:2>
		TYPE(NOU,NPR)
	}

	//für etwas gedacht
	DOMAIN(01.05:NORMAL)
	{
        KEYWORD("für", "bei")
        <:3>
        TYPE(NOU)
        AND
        !KEYWORD(EXPAND "negation.cl")
		<:3>
        ANCESTOR(578471:0,139210:99,38868:0)//@SYN: #578471# [ideal] //@SYN: #139210# [berechtigt] //@SYN: #38868# [geeignet]
	}

	//gut und kraftvoll
	DOMAIN(01.05:LOW)
	{
        !KEYWORD(EXPAND "negation.cl")
		<:3>
        SYNCON (578471,139210,38868,51055,93060,68902)//@SYN: #578471# [ideal] //@SYN: #139210# [berechtigt] //@SYN: #38868# [geeignet] //@SYN: #51055# [bon] //@SYN: #93060# [stark] //@SYN: #68902# [einwandfrei]
		<-4:3>
		!KEYWORD("wäre", "wären","sollte","sollten")
	}

	//es gab kein Problem
	DOMAIN(01.05:NORMAL)
	{
		KEYWORD("es")
		<-3:3>
		LEMMA("geben")
        AND
        KEYWORD(EXPAND "negation.cl")
	    <:3>
		ANCESTOR(12402)//@SYN: #12402# [Problem]
	}

	//keine Schwierigkeit und Probleme
	DOMAIN(01.05:NORMAL)
	{
        KEYWORD(EXPAND "negation.cl")
	    <:3>
	    ANCESTOR(142374,12402)//@SYN: #142374# [Schwierigkeit] //@SYN: #12402# [Problem]
	}

	//Zuverlässigkeit
	DOMAIN(01.05:NORMAL)
	{
        !KEYWORD(EXPAND "negation.cl")
	    <:3>
	    SYNCON(102689057,588963,169086,596281)//@SYN: #102689057# [Verlässlichkeit] //@SYN: #588963# [zuverlässig] //@SYN: #169086# [seriös] //@SYN: #596281# [zuverlässig]
	}

	//guter Eindruck
	DOMAIN(01.05:NORMAL)
	{
        !KEYWORD(EXPAND "negation.cl")
	    <:3>
	   SYNCON (578471,139210,38868,51055,93060,68902)
	   >
	   SYNCON(875,4441)//@SYN: #875# [Bild] //@SYN: #4441# [Abdruck]
	}
}
