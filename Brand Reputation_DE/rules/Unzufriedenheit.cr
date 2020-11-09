
SCOPE SENTENCE
{
	//mit dem Gerät nicht zufrieden
	DOMAIN(01.02:NORMAL)
	{
	    KEYWORD(EXPAND "negation.cl")
	    <:3>
	    SYNCON(109900,117054581)//@SYN: #109900# [zufrieden] //@SYN: #117054581# [Genugtuung]
	    OR
	    !KEYWORD(EXPAND "negation.cl")
	    <:3>
	    SYNCON(102177,173446)//@SYN: #102177# [unzufrieden] //@SYN: #173446# [Unzufriedenheit]
	}

	//gealter Inhalt / Treiber / Komponente
	DOMAIN(01.02:NORMAL)
	{
	    LIST(597984,590190,123121)//@SYN: #597984# [veraltend] //@SYN: #590190# [alt] //@SYN: #123121# [alt]
	    >
	    ANCESTOR(101033951,728,101310239,100007397)//@SYN: #101033951# [Treiber] //@SYN: #728# [Inhalt] //@SYN: #101310239# [Bestandteil] //@SYN: #100007397# [Software]
	}

	//veralterten Inhalt / ecc
	DOMAIN(01.02:NORMAL)
	{
		PATTERN("veraltert\w+")
	    >
	    ANCESTOR(728,101033951,101310239,100007397)//@SYN: #728# [Inhalt] //@SYN: #101033951# [Treiber] //@SYN: #101310239# [Bestandteil] //@SYN: #100007397# [Software]
	}

	//nicht wie erwartet
	DOMAIN(01.02:NORMAL)
	{
		KEYWORD(EXPAND "negation.cl")
		>
		KEYWORD("wie")
		<>
		SYNCON(596844,13969)//@SYN: #596844# [erwartet] //@SYN: #13969# [erwarten]
	}

	//funktioniert nicht gut
	DOMAIN(01.02:NORMAL)
	{
		TYPE(VER)
		<-7:7>
		KEYWORD(EXPAND "negation.cl")
	    >
	    LIST(51055,81737,562493)//@SYN: #51055# [bon] //@SYN: #81737# [schnell] //@SYN: #562493# [problemlos]
	}

	//finde nicht angenehm
	DOMAIN(01.02:NORMAL)
	{
		LEMMA("finden")
		<>
		KEYWORD(EXPAND "negation.cl")
	    >
		SYNCON(21218)//@SYN: #21218# [angenehm]
	}

	//Kritik
	DOMAIN(01.02:LOW)
	{
		!KEYWORD(EXPAND "negation.cl")
	    <:3>
	    SYNCON(571324,64964,16811)//@SYN: #571324# [Hauptkritikpunkt] //@SYN: #64964# [Kritikpunkt] //@SYN: #16811# [kritisieren]
	    OR
	    LEMMA("Kritik")
	}
}
