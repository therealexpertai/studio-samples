                                    //--------------------------------------------------------------------//
                                    //                Extraction of acquisition events  	              //
                                    //                			Buyer & Seller			  	              //
                                    //            ::Reference links at the bottom of the page::           //
                                    //--------------------------------------------------------------------//



SCOPE SENTENCE
{
	//This rule finds people names (anaphorae included) and proper nouns (organizations) having a subject role in sentence where there's an event of purchase of a target seller organization
	IDENTIFY(Finance_Acquisitions)
	{
		@Buyer[TYPE(NPH,PRO:H,NPR)+ROLE(SUBJECT)]
		<:7>
		@@Economics[ANCESTOR(75735,149116,149114,75749,68908,77578,149113,76044)-TYPE(VER:1,VER:4,VER:5,VER:continuous,VER:ing_form)] //# 75735: buy, purchase, get, acquire, beli; 149116: buy; 149114: buy; 75749: buy; 68908: buy; 77578: buy; 149113: buy; 76044: corrupt, buy
		<:7>
		@Seller[ANCESTOR(100043229,101165188:0)+TYPE(NPR)+ROLE(OBJECT)-LIST(78660:99)]//@SYN: #100043229# [organization]
	}

	//This rule differs from the previous as it relies on entities created by using the Tagger [TAG(COMPANY)]
	IDENTIFY(Finance_Acquisitions)
	{
		@Buyer[TYPE(NPH,PRO:H,NPR)+ROLE(SUBJECT)]
		<:7>
		@@Economics[ANCESTOR(75735,149116,149114,75749,68908,77578,149113,76044)-TYPE(VER:1,VER:4,VER:5,VER:continuous,VER:ing_form)] //# 75735: buy, purchase, get, acquire, beli; 149116: buy; 149114: buy; 75749: buy; 68908: buy; 77578: buy; 149113: buy; 76044: corrupt, buy
		<:7>
		@Seller[TAG(COMPANY)]
	}

	//This rule finds people names (anaphorae included) and proper nouns (organizations) announcing the acquisition of a target seller organization
	IDENTIFY(Finance_Acquisitions)
	{
		@Buyer[TYPE(NPH,PRO:H,NPR)+ROLE(SUBJECT)]
		<:4>
		LEMMA("announce")
		<:4>
		@@Economics[ANCESTOR(198)+ROLE(OBJECT)] // # 75735: buy, purchase, get, acquire, beli; 149116: buy; 149114: buy; 75749: buy; 68908: buy; 77578: buy; 149113: buy; 76044: corrupt, buy //@SYN: #198# [acquisition]
		<:7>
		@Seller[ANCESTOR(100043229,101165188:0)+TYPE(NPR)-LIST(78660:99)]//@SYN: #100043229# [organization]
	}
}

                                    //--------------------------------------------------------------------//
                                    //                Extraction of acquisition money sums 	              //
                                    //--------------------------------------------------------------------//

SCOPE SENTENCE
{
	//This rule finds currencies following the word "for" and preceded by a collection of concepts consistent with the syncon of "acquisition" @SYN: #198 of the knowledge graph
	IDENTIFY(Finance_Acquisitions)
	{
		ANCESTOR(198)//@SYN: #198# [acquisition]
		<>
		KEYWORD("for")
		>>
		@@Money[TYPE(MON)]
	}

	IDENTIFY(Finance_Acquisitions)
	{
	//This rule finds currencies following the word "for" and preceded by a collection of concepts consistent with the action/verb of purchasing something
		ANCESTOR(75735,149116,149114,75749,68908,77578,149113,76044) - TYPE(VER:1,VER:4,VER:5,VER:continuous,VER:ing_form)//# 75735: buy, purchase, get, acquire, beli; 149116: buy; 149114: buy; 75749: buy; 68908: buy; 77578: buy; 149113: buy; 76044: corrupt, buy
		<>
		KEYWORD("for")
		>>
		@@Money[TYPE(MON)]
	}

}


/*
Reference:

TYPE attribute:			http://docs.expertsystem.com/languages/attributes/type/
ROLE attribute:			http://docs.expertsystem.com/languages/attributes/role/
ANCESTOR attribute:		http://docs.expertsystem.com/languages/attributes/ancestor/
LIST attribute:			http://docs.expertsystem.com/languages/attributes/list/
TAG attribute:			http://docs.expertsystem.com/languages/attributes/tag/
KEYWORD attribute:		http://docs.expertsystem.com/languages/attributes/keyword/
Logical Operators:		http://docs.expertsystem.com/languages/operators/logical/
Sequence Operators:		http://docs.expertsystem.com/languages/operators/positional-sequences/
Attributes combination:	http://docs.expertsystem.com/languages/attributes/combination/
*/
