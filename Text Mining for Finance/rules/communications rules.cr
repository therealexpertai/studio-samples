
                                    //--------------------------------------------------------------------//
                                    //                Extraction of communication events 	              //
                                    //                			Source and Target			              //
                                    //            ::Reference links at the bottom of the page::           //
                                    //--------------------------------------------------------------------//

SCOPE SENTENCE
{
	//This rule relies on logical operators to extract events involving people being subject of a communication action towards another person
	IDENTIFY(Finance_Communications)
	{
		@Source[TYPE(NPH,PRO:H)]
		&SV
		@@Communication[ANCESTOR(EXPAND "communication verbs.cl") - TYPE(VER:1,/*VER:2,*/VER:4,VER:5,VER:continuous,VER:ing_form)]
		&OV
		@Target[TYPE(NPH,PRO:H)]
	}

	//This rule relies on logical operators to extract events involving people being subject of a communication action towards an organization
	IDENTIFY(Finance_Communications)
	{
		@Source[TYPE(NPH,PRO:H)]
		&SV
		@@Communication[ANCESTOR(EXPAND "communication verbs.cl") - TYPE(VER:1,/*VER:2,*/VER:4,VER:5,VER:continuous,VER:ing_form)]
		&OV
		@Target[ANCESTOR(100043229) + TYPE(NPR) - LIST(78660:99)]
	}

	//This rule relies on logical operators to extract events involving organizations being subject of a communication action towards another organization
	IDENTIFY(Finance_Communications)
	{
		@Source[ANCESTOR(100043229) + TYPE(NPR) - LIST(78660:99)]
		&SV
		@@Communication[ANCESTOR(EXPAND "communication verbs.cl") - TYPE(VER:1,/*VER:2,*/VER:4,VER:5,VER:continuous,VER:ing_form)]
		&OV
		@Target[ANCESTOR(100043229) + TYPE(NPR) - LIST(78660:99)]
	}

}

                                    //--------------------------------------------------------------------//
                                    //                Extraction of communication events 	              //
                                    //                Includes communication quote extraction             //
                                    //--------------------------------------------------------------------//

SCOPE SENTENCE
{
	//This rule finds people names (anaphorae included) being subject of a verb of communication in occurrence with the actual communication within quotes
	//This rules extracts multiple fileds and the @@Communication fields will generate a Form, Action and Sentence extraction respectively thanks to the TRANSFORM token option (see the config.cr file for reference)
	IDENTIFY(Finance_Communications)
	{
	(	@Source[TYPE(NPH,PRO:H)]
		&SV
		@@Communication[ANCESTOR(EXPAND "communication verbs.cl") - TYPE(VER:1,/*VER:2,*/VER:4,VER:5,VER:continuous,VER:ing_form)]	)
		AND
	(	@Quote[PATTERN("\"")]|[SEQUENCE]
		<:7>
		!PATTERN("\"")
		<8:45>
		PATTERN("\"")	)
	}

	//This rule differs from the previous as it also extracts job roles when found in a communication event along with the Spurce person name
	IDENTIFY(Finance_Communications)
	{
	(	@Role[ANCESTOR(100327055)]//@SYN: #100327055# [working person]
		<:3>
		@Source[TYPE(NPH,PRO:H)]
		&SV
		@@Communication[ANCESTOR(EXPAND "communication verbs.cl") - TYPE(VER:1,/*VER:2,*/VER:4,VER:5,VER:continuous,VER:ing_form)]	)
		AND
	(	@Quote[PATTERN("\"")]|[SEQUENCE]
		<:7>
		!PATTERN("\"")
		<8:45>
		PATTERN("\"")	)
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
External lists:			http://docs.expertsystem.com/languages/attributes/external-files/
Attributes combination:	http://docs.expertsystem.com/languages/attributes/combination/
NEGATION in seq:		https://docs.expert.ai/studio/latest/languages/operators/positional-sequences/negation/
*/
