
SCOPE SENTENCE
{
	//große Manko/Einschränkung
	DOMAIN(01.03:NORMAL)
	{
        LIST(36248,21884,139017,55914,64949,27945,73260)//@SYN: #36248# [ein] //@SYN: #21884# [groß] //@SYN: #139017# [hauptsächlich] //@SYN: #55914# [eminent] //@SYN: #64949# [durchsichtig] //@SYN: #27945# [eindeutig] //@SYN: #73260# [evident]
	    <:3>
	    ANCESTOR(15927:1, 67762)//@SYN: #15927# [Mangel] //@SYN: #67762# [Einschränkung]
	}

	//mir war zu anstengend,...
	DOMAIN(01.03:NORMAL)
	{
        LEMMA("sein")
        <>
        KEYWORD("sehr", "zu")
        >
        SYNCON (21930,52923,162834)//@SYN: #21930# [hart] //@SYN: #52923# [diffizil] //@SYN: #162834# [problematisch]
	}

	//wollte es zurückschicken
	DOMAIN(01.03:NORMAL)
	{
        KEYWORD("es", "ihn")
        <-2:2>
		SYNCON(112479)//@SYN: #112479# [zurückschicken]
	}

	//habe es zurückgeschickt
	DOMAIN(01.03:NORMAL)
	{
		LEMMA("haben")
		<-5:5>
        KEYWORD("es", "ihn")
        <-2:2>
		KEYWORD ("zurückgeschickt")
	}

	//ich bin enttäuscht
	DOMAIN(01.03:NORMAL)
	{
		!KEYWORD(EXPAND "negation.cl")
		<:3>
		SYNCON(14224,578071,38897,100621206)//@SYN: #14224# [enttäuschen] //@SYN: #578071# [enttäuscht] //@SYN: #38897# [Enttäuschung] //@SYN: #100621206# [Enttäuschung]
	}

	//falscher Angabe
	DOMAIN(01.03:NORMAL)
	{
		LIST(135245,19267)//@SYN: #135245# [falsch] //@SYN: #19267# [absent]
		>
		LIST(100011028,100042848)//@SYN: #100011028# [Information] //@SYN: #100042848# [Daten]
	}

	//nie wieder
	DOMAIN(01.03:NORMAL)
	{
		LEMMA("nie")
		>
		LEMMA("wieder")
	}

	//bisher war ich zufrieden
	DOMAIN(01.03:NORMAL)
	{
		SYNCON (28957)//@SYN: #28957# [bisher]
		<>
	    !KEYWORD(EXPAND "negation.cl")
	    <>
	    +SYNCON(109900)//@SYN: #109900# [zufrieden]
	}
}
