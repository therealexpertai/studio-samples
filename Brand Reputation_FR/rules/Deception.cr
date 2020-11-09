
SCOPE SENTENCE
{
	// Décevoir
	// Je suis très déçue.
	DOMAIN(01.03:NORMAL)
	{
 	 	!KEYWORD(EXPAND "negations.cl")
        <-4:4>
        SYNCON(98566,76803,76289)//@SYN: #98566# [déçu] //@SYN: #76803# [décevoir] //@SYN: 	#76289# [décevoir]
	}


	// Déception
	//Une immense déception pour cette marque
	DOMAIN(01.03:NORMAL)
	{
	 	!KEYWORD(EXPAND "negations.cl")
        <
        ANCESTOR(28051,100621206,102914732)//@SYN: #28051# [mécontentement] //@SYN: 					#100621206# [déception] //@SYN: #102914732# [déception]
	}


	//Comme je regrette d'avoir acheté l'Asus Vivobook Flip 14 il y a un mois.
	DOMAIN(01.03:NORMAL)
	{
 	 	!KEYWORD(EXPAND "negations.cl")
        <-4:4>
        SYNCON(87187,77251)//@SYN: #87187# [regretter] //@SYN: #77251# [regretter]
        <:4>
        SYNCON(115168,101369832,1427)//@SYN: #115168# [acheter] //@SYN: #101369832# 	   		[achat] //@SYN: 		#1427# [achat]
	}


	//C'est de la douche froide
	DOMAIN(01.03:NORMAL)
	{
        LEMMA("être")
        <:4>
        SYNCON(27514)//@SYN: #27514# [douche froide]
	}
}
