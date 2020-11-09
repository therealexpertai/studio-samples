                                    //-----------------------------------------------------------------------//
                                    //              Extraction of revenues increase and decrease             //
									//				Percentages and money sums								 //
                                    //              ::Reference links at the bottom of the page::            //
                                    //-----------------------------------------------------------------------//

SCOPE SENTENCE
{
	//This rule finds percentages (by using the knowledge graph) preceded by lemmas like "revenue" and "climb" or "increase" in a sequence
	IDENTIFY(Finance_Extractions)
	{
		LEMMA("revenue")
		>>
		LEMMA("climb","increase")
		>>
		@Revenue_Increase[ANCESTOR(100011229)+SYNCON(UNKNOWN)] //@SYN: #100011229# [percentage]
	}

	//This rule finds percentages (by using the knowledge graph) followed by lemmas like "bump" and "revenue" in a sequence
	IDENTIFY(Finance_Extractions)
	{
		@Revenue_Increase[ANCESTOR(100011229)+SYNCON(UNKNOWN)] //@SYN: #100011229# [percentage]
		>>
		LEMMA("bump")
		<:3>
		LEMMA("revenue")
	}

	//This rule finds percentages (by using the knowledge graph) preceded by lemmas like "revenue" and "decrease", "decline" or "dropin" a sequence
	IDENTIFY(Finance_Extractions)
	{
		LEMMA("revenue")
		>>
		LEMMA("decrease","decline","drop")
		<:2>
		@Revenue_Decrease[ANCESTOR(100011229)+SYNCON(UNKNOWN)] //@SYN: #100011229# [percentage]
	}

	//This rule finds money sums preceded by a percentage and then lemmas like "revenue" and "decrease", "decline" or "drop in" a sequence
	IDENTIFY(Finance_Extractions)
	{
		LEMMA("revenue")
		>>
		LEMMA("decrease","decline","drop")
		<:2>
		ANCESTOR(100011229)+SYNCON(UNKNOWN)
		<:2>
		@Revenue_Decrease[TYPE(MON)]
	}
}
                                    //-------------------------------------------------------//
                                    //              Revenues extraction			             //
									//				Money sums								 //
                                    //-------------------------------------------------------//

SCOPE SENTENCE
{
	//This rule finds money sums preceded by lemmas like "revenue", the verb to "be" and not followed by the word "in"
	IDENTIFY(Finance_Extractions)
	{
		LEMMA("revenue")
		>>
		LEMMA("be")
		>>
		@Revenue[TYPE(MON)] //@SYN: #100011229# [percentage]
		>>
		!KEYWORD("in")
	}

	//This rule composes revenues extractions made of money sums followed by the word "in" and a quarter mention such as "Q2"
	IDENTIFY(Finance_Extractions)
	{
		LEMMA("revenue")
		>>
		LEMMA("be")
		>>
		@Revenue[TYPE(MON)]|[SMARTENTRY#1] //@SYN: #100011229# [percentage]
		>>
		@Revenue[KEYWORD("in")]|[TEXT#2]
		>>
		@Revenue[LIST(65588:99)]|[TEXT#3] //@SYN: #65588# [quarter]
	}

	//This rule finds money sums followed by the word "in" and the lemma "revenue" in a sequence
	IDENTIFY(Finance_Extractions)
	{
		@Revenue[TYPE(MON)] //@SYN: #100011229# [percentage]
		>>
		KEYWORD("in")
		>>
		LEMMA("revenue")
	}

	//This rule finds money sums preceded by lemmas like "revenue" and "total" or "totaled" in a sequence
	IDENTIFY(Finance_Extractions)
	{
		LEMMA("revenue")
		>>
		LEMMA("total","totaled")
		>>
		@Revenue[TYPE(MON)] //@SYN: #100011229# [percentage]
	}
}
                                    //----------------------------------------------------------------//
                                    //              Extraction of net loss and net income             //
									//				Money sums								 		  //
                                    //----------------------------------------------------------------//

SCOPE SENTENCE
{
	//This rule finds money sums preceded by lemmas like "net" and "loss" or "operating loss" in a sequence
	IDENTIFY(Finance_Extractions)
	{
		LEMMA("net")
		>>
		LEMMA("loss","operating loss")
		<:2>
		@Net_Loss[TYPE(MON)]|[SMARTENTRY#1] //@SYN: #100011229# [percentage]
	}
	//This rule finds money sums preceded by lemmas like "net" and "income" or "operating income" in a sequence
	IDENTIFY(Finance_Extractions)
	{
		LEMMA("net")
		>>
		LEMMA("income","operating income")
		<:2>
		@Net_Income[TYPE(MON)]|[SMARTENTRY#1] //@SYN: #100011229# [percentage]
	}
	//This rule finds money sums preceded by the "net income" lemma in a sequence
	IDENTIFY(Finance_Extractions)
	{
		LEMMA("net income")
		<:2>
		@Net_Income[TYPE(MON)]|[SMARTENTRY#1] //@SYN: #100011229# [percentage]
	}
}
                                    //----------------------------------------------------------------//
                                    //              Extraction of stock market			              //
                                    //----------------------------------------------------------------//

SCOPE SENTENCE
{
	//This rule finds stock exchanges not followed by a specific regular expression
	IDENTIFY(Finance_Extractions) //ok
	{
		@Stock_Exchange[ANCESTOR(100475000)+TYPE(NPR)]|[TEXT] //@SYN: #100475000# [stock market]
		>>
		!PATTERN("\:\s?[A-Z]+")
	}
	//This rule finds stock exchanges followed by a specific regular expression and makes them a whole string extraction
	IDENTIFY(Finance_Extractions) //ok
	{
		@Stock_Exchange[ANCESTOR(100475000)]|[SEQUENCE] //@SYN: #100475000# [stock market]
		>>
		PATTERN("\:\s?[A-Z]+")
	}
	//This rule finds stock exchanges preceded and follower by brakets and companies at the beginning of the sequence
	IDENTIFY(Finance_Extractions) //ok
	{
		ANCESTOR(104830453)+TYPE(NPR)-PATTERN("[A-Z]+")
		>>
		PATTERN("\(")
		>>
		@Stock_Exchange[PATTERN("[A-Z]+\:\s?[A-Z]+")]|[TEXT]
		>>
		PATTERN("\)")
	}
}
                                    //----------------------------------------------------//
                                    //              Extraction of companies	              //
                                    //----------------------------------------------------//

SCOPE SENTENCE
{
	//This rule finds companies names only when found in the same sentence along with the concept of investment and more related concepts
	IDENTIFY(Finance_Extractions) //ok
	{
		@Company[ANCESTOR(104830453)+TYPE(NPR,ENT)]|[SMARTENTRY] //@SYN: #104830453# [company]
		AND
		ANCESTOR(100004290) //@SYN: #100004290# [investment]
	}
	//This rule finds companies names only when found in the same sentence along with stock market and more related concepts
	IDENTIFY(Finance_Extractions) //ok
	{
		@Company[ANCESTOR(104830453)+TYPE(NPR)]|[SMARTENTRY] //@SYN: #104830453# [company]
		<:3>
		ANCESTOR(100475000) //@SYN: #100475000# [stock market]
	}
}
                                    //--------------------------------------------------------------------//
                                    //              Extraction of investment assessments	              //
                                    //--------------------------------------------------------------------//

SCOPE SENTENCE
{
	//This rule finds the word "investment" preceded by concepts related to "good", "bad" and "safe" andextract them a whole string extraction
    IDENTIFY(Finance_Extractions)//ok
    {
		LEMMA("be")
		<:2>
		@Investment[ANCESTOR(87586,87597,94090,94095)]|[TEXT#1]//@SYN: #87586# [good] //@SYN: #87597# [bad] //@SYN: #94090# [sound] //@SYN: #94095# [risky]
		<:2>
		@Investment[LEMMA("investment")]|[TEXT#2]
    }

	//This rule works like the previous avoiding possible overlapping by excluding the occurrence of the verb to "be" if the sequence is precedere by an article
    IDENTIFY(Finance_Extractions)//ok
    {
		!LEMMA("be")
		>>
		TYPE(ART)
		<:2>
		@Investment[ANCESTOR(87586,87597,94090,94095)]|[TEXT#1]//@SYN: #87586# [good] //@SYN: #87597# [bad] //@SYN: #94090# [sound] //@SYN: #94095# [risky]
		<:2>
		@Investment[LEMMA("investment")]|[TEXT#2]
    }

}


/*
Reference:

TYPE attribute:			http://docs.expertsystem.com/languages/attributes/type/
SYNCON attribute:		http://docs.expertsystem.com/languages/attributes/syncon/
ANCESTOR attribute:		http://docs.expertsystem.com/languages/attributes/ancestor/
LIST attribute:			http://docs.expertsystem.com/languages/attributes/list/
UNKNOWN attribute:		http://docs.expertsystem.com/languages/attributes/syncon/#with-unknown
PATTERN attribute:		http://docs.expertsystem.com/languages/attributes/pattern/
LEMMA attribute:		http://docs.expertsystem.com/languages/attributes/lemma/
KEYWORD attribute:		http://docs.expertsystem.com/languages/attributes/keyword/
Boolean Operators:		http://docs.expertsystem.com/languages/operators/boolean/
Sequence Operators:		http://docs.expertsystem.com/languages/operators/positional-sequences/
NEGATION in seq:		https://docs.expert.ai/studio/latest/languages/operators/positional-sequences/negation/
*/
