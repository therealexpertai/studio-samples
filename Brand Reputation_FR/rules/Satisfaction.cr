SCOPE SENTENCE
{
	// être content, satisfait
	//Je suis très content de mon acquisition
	DOMAIN(01.01:NORMAL)
	{
        !KEYWORD(EXPAND "negations.cl")
        <
        SYNCON(99693,114588,112820)
	}


	// Satisfaction, satisfaction client
	DOMAIN(01.01:NORMAL)
	{
        !KEYWORD(EXPAND "negations.cl")
        <
		SYNCON(100999278,58890,58894,14614)//@SYN: #100999278# [satisfaction utilisateur] //@SYN: #58890# [satisfaction] //@SYN: #58894# [satisfaction] //@SYN: #14614# [plaisir]
	}


	// Extraordinaire, prodigieux
	DOMAIN(01.01:NORMAL)
	{
        !KEYWORD(EXPAND "negations.cl")
        <
		SYNCON(99184,105613,105617,105616,105611)//@SYN: #99184# [énorme] //@SYN: #105613# [parfait] //@SYN: #105617# [idéal] //@SYN: #105616# [parfait] //@SYN: #105611# [exemplaire]
		- LEMMA("énorme")
	}

	// agréable, beau
	DOMAIN(01.01:LOW)
	{
        !KEYWORD(EXPAND "negations.cl")
        <:3>
        SYNCON(114584,99062,94565,95862)//@SYN: #114584# [agréable] //@SYN: #99062# [beau] //@SYN: #94565# [beau] //@SYN: #95862# [séduisant]
 	}



	// Une merveille!
	DOMAIN(01.01:LOW)
	{
        !KEYWORD(EXPAND "negations.cl")
        <
        LEMMA("merveille", "merveilleux")
	}

	// Exceptionnel
	// Une machine exceptionnelle
	DOMAIN(01.01:NORMAL)
	{
        !KEYWORD(EXPAND "negations.cl")
        <
        LIST(94888,101954)//@SYN: #94888# [extraordinaire] //@SYN: #101954# [incomparable]
	}


	//Matériel que je recommande.
	DOMAIN(01.01:NORMAL)
	{
        !KEYWORD(EXPAND "negations.cl")
        <-2:2>
        LEMMA("recommander", "conseiller")
	}


	// excellent rapport qualité-prix
	DOMAIN(01.01:NORMAL)
	{
        LEMMA("excellent", "bon")
        >
        SYNCON(123424)//@SYN: #123424# [rapport qualité prix]
	}

	// ordinateur peu cher
	DOMAIN(01.01:NORMAL)
	{
        ANCESTOR(101183543)//@SYN: #101183543# [dispositif]
        <:5>
        KEYWORD(EXPAND "negations.cl")
        >
        SYNCON(95931,95928)//@SYN: #95931# [cher] //@SYN: #95928# [cher]
	}


	// être en première ligne
	DOMAIN(01.01:NORMAL)
	{
        !KEYWORD(EXPAND "negations.cl")
        <:3>
        KEYWORD("en première ligne")
 	}
}