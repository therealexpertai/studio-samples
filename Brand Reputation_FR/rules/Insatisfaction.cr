
SCOPE SENTENCE
{
	// Insatisfaction
	DOMAIN(01.02:NORMAL)
	{
		!KEYWORD(EXPAND "negations.cl")
		<
		SYNCON(28051,38396)//@SYN: #28051# [mécontentement] //@SYN: #38396# [insatisfaction]
	}


	// Insatisfait
	DOMAIN(01.02:NORMAL)
	{
		!KEYWORD(EXPAND "negations.cl")
		<
		LIST(102208)//@SYN: #102208# [insatisfait]
	}

	// Pas satisfait, pas content
	DOMAIN(01.02:NORMAL)
	{
		KEYWORD(EXPAND "negations.cl")
		>
		LIST(112820,112822,112823,114587)//@SYN: #112820# [satisfait] //@SYN: #112822# [satisfait] //@SYN: #112823# [satisfait] //@SYN: #114587# [content]
	}


	//Comment peut-on faire dépenser 1400€ pour un produit aussi nul
	DOMAIN(01.02:NORMAL)
	{
        ANCESTOR(102424752)//@SYN: #102424752# [produit]
        <:3>
        SYNCON(105201)//@SYN: #105201# [nul]
	}


	//Je déconseille cet ordinateur malgré ses excellentes performances.
	DOMAIN(01.02:NORMAL)
	{
		!KEYWORD(EXPAND "negations.cl")
		>
 		ANCESTOR(76470,76469,228417)//@SYN: #76470# [déconseiller] //@SYN: #76469# [déconseiller] //@SYN: #228417# [déconseillé]
	}


	//à éviter, donc
	DOMAIN(01.02:NORMAL)
	{
		KEYWORD("à")
        >
        SYNCON(79123,92526,92532,92524)//@SYN: #79123# [fuir] //@SYN: #92526# [éviter] //@SYN: #92532# [éviter] //@SYN: #92524# [éviter]
	}


	//Très désagréable
	DOMAIN(01.02:NORMAL)
	{
		!KEYWORD(EXPAND "negations.cl")
		>
		ANCESTOR(98042)		//@SYN: #98042# [désagréable]
	}

	//Points négatifs énormes
	DOMAIN(01.02:LOW)
	{
		!KEYWORD(EXPAND "negations.cl")
		>
		LEMMA("point")
		>
		LEMMA("négatif")
		<:4>
		SYNCON(99184,97335,100855,104313)//@SYN: #99184# [énorme] //@SYN: #97335# [immense] //@SYN: #100855# [grand] //@SYN: #104313# [grand]
	}

	//Points négatifs non négligeables
	DOMAIN(01.02:LOW)
	{
		!KEYWORD(EXPAND "negations.cl")
		>
		LEMMA("point")
		>
		LEMMA("négatif")
		<:4>
		SYNCON(111449)//@SYN: #111449# [ne]
		>
		SYNCON(105250,105251)//@SYN: #105250# [négligeable] //@SYN: #105251# [négligeable]
	}


	//Impardonnable
	DOMAIN(01.02:NORMAL)
	{
		!KEYWORD(EXPAND "negations.cl")
		>
		ANCESTOR(101927,102731)//@SYN: #101927# [inacceptable] //@SYN: #102731# [injustifiable]
	}

	//Il ne vaut pas du tout son prix
	DOMAIN(01.02:NORMAL)
	{
		KEYWORD(EXPAND "negations.cl")
		>
		LEMMA("valoir")
		<:4>
		LEMMA("prix")
	}
}
