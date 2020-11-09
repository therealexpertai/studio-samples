
SCOPE SENTENCE
{
	//Indifferent, indifférence
	DOMAIN(01.06:NORMAL)
	{
	    !KEYWORD(EXPAND "negations.cl")
	    <:2>
        SYNCON(46163,38017,102507,102499,102500)//@SYN: #46163# [indifférence] //@SYN: #38017# [indifférence] //@SYN: #102507# [indifférent] //@SYN: #102499# [indifférent] //@SYN: #102500# [indifférent]
	}



	//C'est bon, mais pas impressionnant
	DOMAIN(01.06:NORMAL)
	{
        KEYWORD("pas")
        >
        LEMMA("impressionnant")
	}


	//Il n'y a pas de gros changements
	DOMAIN(01.06:NORMAL)
	{
        KEYWORD("pas")
        <:3>
        LEMMA("changement", "nouveauté")
	}


	// Je ne suis pas étonné, impressionné, surpris
	DOMAIN(01.06:NORMAL)
	{
	    KEYWORD(EXPAND "negations.cl")
	    <:2>
	    LIST(109793,81564,107901,83434,103439,89708)//@SYN: #109793# [étonné] //@SYN: #81564# [impressionner] //@SYN: #107901# [étonné] //@SYN: #83434# [étonner] //@SYN: #103439# [frappant] //@SYN: #89708# [surprendre]
	}


	// écran digne de sa catégorie, avec des caractéristiques moyennes
	DOMAIN(01.06:LOW)
	{
	    !KEYWORD(EXPAND "negations.cl")
	    <:2>
        LEMMA("moyen", "normal", "neutre", "ordinaire", "modeste", "médiocre")
        <:4>
        !LEMMA("calculer")
	}

	// le bilan est dans la moyenne
	DOMAIN(01.06:NORMAL)
	{
        LEMMA("bilan")
        <:3>
        KEYWORD("dans")
        >
        LEMMA("moyenne")
	}

	// Son esthétique grise est passe partout ou "un peu terne, sans relief"
	DOMAIN(01.06:NORMAL)
	{
		KEYWORD("sans")
		>
		LEMMA("relief")
	}
}
