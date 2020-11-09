
SCOPE SENTENCE
{
	// Fiable, fiabilité
	DOMAIN(01.05:NORMAL)
	{
  		!KEYWORD(EXPAND "negations.cl")
		<-4:4>
		SYNCON (102689057,62384,99709,108228)//@SYN: #102689057# [sérieux] //@SYN: #62384# 				[fiabilité] //@SYN: #99709# [fiable] //@SYN: #108228# [fiable]
	}

	// Se fier
	DOMAIN(01.05:NORMAL)
	{
  		!KEYWORD(EXPAND "negations.cl")
		<-4:4>
		LEMMA("fier", "confier", "confiance")
	}

	// Il fait moins d'erreurs
	DOMAIN(01.05:NORMAL)
	{
  		KEYWORD(EXPAND "negations.cl")
		<-4:4>
        LEMMA("faire")
        <:3>
        ANCESTOR(30341,100029485)//@SYN: #30341# [erreur] //@SYN: #100029485# [faute]
	}

	// Fonctionner correctement
	DOMAIN(01.05:NORMAL)
	{
  		!KEYWORD(EXPAND "negations.cl")
		<:3>
		LIST(81976:2)//@SYN: #81976# [fonctionner]
		<-2:3>
		LEMMA("bien", "correctement", "parfaitement")
	}


	// Très puissant
	DOMAIN(01.05:LOW)
	{
  		!KEYWORD(EXPAND "negations.cl")
		<:3>
        LEMMA("puissant", "performant", "efficace")
	}
}
