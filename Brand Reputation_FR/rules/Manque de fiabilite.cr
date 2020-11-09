
SCOPE SENTENCE
{
	//Manque de fiabilité
	DOMAIN(01.04:NORMAL)
	{
  		!KEYWORD(EXPAND "negations.cl")
		<-4:4>
        LIST(11315, 82585)//@SYN: #11315# [manque]
        <:3>
        SYNCON(102689057,62384)//@SYN: #102689057# [sérieux] //@SYN: #62384# [fiabilité]
	}


	//Pas de fiabilité
	DOMAIN(01.04:NORMAL)
	{
  		KEYWORD(EXPAND "negations.cl")
        <:3>
        SYNCON(102689057,62384)//@SYN: #102689057# [sérieux] //@SYN: #62384# [fiabilité]
	}


	//Pas de confiance, indigne de confiance
	DOMAIN(01.04:NORMAL)
	{
  		KEYWORD(EXPAND "negations.cl")
        <:3>
        SYNCON(14619,23597)//@SYN: #14619# [confiance] //@SYN: #23597# [confiance]
	}


	//Pas fiable
	DOMAIN(01.04:NORMAL)
	{
  		KEYWORD(EXPAND "negations.cl")
        <:3>
        SYNCON(99709,108228)//@SYN: #99709# [fiable] //@SYN: #108228# [fiable]
	}




	//Manque de fonction, manque de fluidité, manque de contraste, etc.
	DOMAIN(01.04:NORMAL)
	{
  		!KEYWORD(EXPAND "negations.cl")
		<-4:4>
        LIST(11315, 82585)//@SYN: #11315# [manque]
        - LEMMA("absence")
        >
        KEYWORD("de")
	}

	// La machine plante en arrêtant le système
	DOMAIN(01.04:NORMAL)
	{
  		!KEYWORD(EXPAND "negations.cl")
		<-4:4>
        LEMMA("machine", "portable", "ordinateur")
        &SV
        ANCESTOR(127884:2)
	}


	//Ce n'est pas un foudre de guerre
	DOMAIN(01.04:LOW)
	{
  		KEYWORD(EXPAND "negations.cl")
		<-3:3>
        SYNCON(120637)//@SYN: #120637# [foudre de guerre]
	}


	// Le Pc est dans l'ensemble plutôt bruyant
	DOMAIN(01.04:NORMAL)
	{
  		!KEYWORD(EXPAND "negations.cl")
		<-3:3>
        LEMMA("bruit", "bruyant")
	}


	// Il est trop peu puissant
	DOMAIN(01.04:NORMAL)
	{
  		!SYNCON(112978)//@SYN: #112978# [probablement]
  		<:2>
  		KEYWORD(EXPAND "negations.cl")
		<:3>
        LEMMA("puissant", "performant", "efficace")
	}

	//C'est galère!
	DOMAIN(01.04:LOW)
	{
  		!KEYWORD(EXPAND "negations.cl")
		<:3>
		LEMMA("galère", "galérer")
	}

	// Pas fonctionner correctement
	DOMAIN(01.04:NORMAL)
	{
  		KEYWORD(EXPAND "negations.cl")
		<:3>
		LIST(81976:2)//@SYN: #81976# [fonctionner]
		<-2:3>
		LEMMA("bien", "correctement")
	}


	// Je le trouve assez lent
	DOMAIN(01.04:NORMAL)
	{
  		!KEYWORD(EXPAND "negations.cl")
		<
		SYNCON(110053,110137,110047)//@SYN: #110053# [trop] //@SYN: #110137# [beaucoup]
		<:3>
		SYNCON(103993,103994)//@SYN: #103993# [appesanti] //@SYN: #103994# [lent]
	}
}
