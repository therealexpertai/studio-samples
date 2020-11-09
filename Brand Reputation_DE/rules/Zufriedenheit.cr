
SCOPE SENTENCE
{
	//mit dem Gerät zufrieden
	DOMAIN(01.01:NORMAL)
	{
		!KEYWORD(EXPAND "negation.cl")
	    <>
	    SYNCON(109900,117054581)//@SYN: #109900# [zufrieden] //@SYN: #117054581# [Zufriedenheit]
	    AND NOT
	    SYNCON(28957)//@SYN: #28957# [bisher]
	}

	//genau wie erwartet
	DOMAIN(01.01:NORMAL)
	{
		!KEYWORD(EXPAND "negation.cl")
	    >
	    SYNCON(139288,26715)//@SYN: #139288# [genau] //@SYN: #26715# [genau]
		>
		KEYWORD("wie")
		<>
		SYNCON(596844,13969)//@SYN: #596844# [erwartet] //@SYN: #13969# [erwarten]
	}

	//gut funktioniert
	DOMAIN(01.01:NORMAL)
	{
		LIST(16946,15338,16914)//@SYN: #16946# [gehen] //@SYN: #15338# [gelingen] //@SYN: #16914# [arbeiten]
		<-7:7>
		!KEYWORD(EXPAND "negation.cl")
	    >
	    LIST(51055,81737,562493)//@SYN: #51055# [bon] //@SYN: #81737# [schnell] //@SYN: #562493# [problemlos]
	}

	//finde angenehm
	DOMAIN(01.01:NORMAL)
	{
		LEMMA("finden")
		<>
		!KEYWORD(EXPAND "negation.cl")
	    >
		LIST(21218)//@SYN: #21218# [angenehm]
	}

	//gute Komponenente
	DOMAIN(01.01:NORMAL)
	{
		!KEYWORD(EXPAND "negation.cl")
	    >
	    LIST(51055,81737,562493)//@SYN: #51055# [bon] //@SYN: #81737# [schnell] //@SYN: #562493# [problemlos]
		>
		ANCESTOR(100609588,590659,100003966)//@SYN: #100609588# [Softwarekomponente] //@SYN: #590659# [Prozessor] //@SYN: #100003966# [Hardware]
	}

	//sehr schnell
	DOMAIN(01.01:NORMAL)
	{
		!KEYWORD(EXPAND "negation.cl")
	    >
	    SYNCON(120770)//@SYN: #120770# [sehr]
		>
		SYNCON(81737,133652)//@SYN: #81737# [schnell] //@SYN: #133652# [flott]
	}

	//positive Aspekte
	DOMAIN(01.01:NORMAL)
	{
		!KEYWORD(EXPAND "negation.cl")
	    <
	    SYNCON(152095,79204)//@SYN: #152095# [positiv] //@SYN: #79204# [positiv]
		>
		SYNCON(120978643)//@SYN: #120978643# [Standpunkt]
	}

	//ist ein Highlight
	DOMAIN(01.01:NORMAL)
	{
		!KEYWORD(EXPAND "negation.cl")
	    <
	    LEMMA("Highlight")
	}

	//empfehlenswert
	DOMAIN(01.01:NORMAL)
	{
		!KEYWORD(EXPAND "negation.cl")
	    <
	    SYNCON(118907,38072,98666)//@SYN: #118907# [Empfehlung] //@SYN: #38072# [empfehlenswert] //@SYN: #98666# [geraten]
	}
}
