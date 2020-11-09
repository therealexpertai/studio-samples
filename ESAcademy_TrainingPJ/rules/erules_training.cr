


//  Configure your Extraction classes
//______________________________________________________________________________________________________________________

/*
	  Head over to the config.cr file to view the Extraction classes already created for you with TEMPLATEs
	  and FIELDs that will be used to refer to the classes where extracted data will be recorded based on
	  your extraction rules.
*/

//______________________________________________________________________________________________________________________



							//--------------------------------------------------------------------//
							//        Review Module A - TEMPLATE definition; basic ATTRIBUTES;    //
							//        BOOLEAN OPERATORS; basic SCOPE options					  //
							//--------------------------------------------------------------------//



//  Rule 1 - @Technology KEYWORD
//______________________________________________________________________________________________________________________

/*
KEYWORD   		It identifies a token by specifying - between quotation marks - the exact sequence of characters that
		  		has to be found in a text.
WIKI      		https://docs.expert.ai/studio/latest/languages/attributes/keyword/
EXAMPLE   		nlp2.txt
*/

//SCOPE SENTENCE
//{
//	// technology "ELIZA" - keyword
//	IDENTIFY(TECHNOLOGIES)
//	{
//		@Technology[KEYWORD("ELIZA","SHRDLU")]
//	}
//}



//  Rule 2 - @Technology/@Institutions LEMMA, LEMMA
//______________________________________________________________________________________________________________________

/*
LEMMA     		It identifies a token by specifying  - between quotation marks - its base form, which is obtained
		  		during the disambiguation process; even flexed forms are matched
WIKI      		https://docs.expert.ai/studio/latest/languages/attributes/lemma/
EXAMPLE   		nlp2.txt
*/

//SCOPE SENTENCE
//{
//	//technology "artificial intelligence" - one lemma
//	IDENTIFY(TECHNOLOGIES)
//	{
//		@Technology[LEMMA("artificial intelligence")]
//	}
//}

////EXAMPLE   nlp2.txt
//SCOPE SENTENCE
//{
//	//institutions "Stanford University","Yale University" - list of lemmas
//	IDENTIFY(KEY_ENTITIES)
//	{
//		@Institutions[LEMMA("Stanford University","Yale University")]
//	}
//}



//  Rule 3 - @Technology SYNCON
//______________________________________________________________________________________________________________________

/*
SYNCON			Identifies a token by specifying its syncon number (ID. It allows to choose a concept
				from the sensigrafo and match all the lemmas it contains)
WIKI			https://docs.expert.ai/studio/latest/languages/attributes/syncon/
EXAMPLE   		nlp2.txt
*/

//SCOPE SENTENCE
//{
//	//technology "artificial intelligence" - list of syncons
//	IDENTIFY(TECHNOLOGIES)
//	{
//		@Technology[SYNCON(200483,100011660,100079798)]
//		//@SYN: #200483# [artificial intelligence]
//		//@SYN: #100011660# [artificial intelligence]
//		//@SYN: #100079798# [machine translation]
//	}
//}




//  Rule 4 - @Institutions/@Places - ANCESTOR
//______________________________________________________________________________________________________________________

/*
ANCESTOR			It identifies a token by specifying its syncon number (ID) and considering this
					concept as a chain’s starting node.
					Any token disambiguated as a syncon belonging to this chain will be identified.
WIKI				https://docs.expert.ai/studio/latest/languages/attributes/ancestor/
EXAMPLE   			nlp2.txt
*/

//SCOPE SENTENCE
//{
//	//institutions Universities - ancestor
//	IDENTIFY(KEY_ENTITIES)
//	{
//		@Institutions[ANCESTOR(100003918)]//@SYN: #100003918# [university]
//	}
//}

////EXAMPLE   			nlp2.txt
//SCOPE SENTENCE
//{
//	//places North American States extraction - unsing links and ancestor levels
//	IDENTIFY(KEY_ENTITIES)
//	{
//		@Places[ANCESTOR(100000049:5:syncon/geography)] //@SYN: #100000049# [North America]
//	}
//}

////EXAMPLE   			nlp2.txt
//SCOPE SENTENCE
//{
//	//places geolocations Extraction - using broader concepts to collect any geographical concept or entity
//	IDENTIFY(KEY_ENTITIES)
//	{
//		@Places[ANCESTOR(78660)]//@SYN: #78660# [geographic place]
//	}
//}



////  Rule 5 - LIST
//______________________________________________________________________________________________________________________

/*
LIST			The LIST attribute identifies a token by specifying its syncon number (ID), but treats the
				syncon as a simple container (list) of lemmas, thus giving no importance to the selected
				concept but only to the words contained in it.
99 				The value that follows the syncon’s ID: can range from 1 to 99. It  indicates the number of
				levels to be considered in the chain of concepts that has been selected.
				A value of 1 will include only the starting node and its first level of children within the chain;
				a value of 2 will include the starting node and its  first and second level of children
				within the chain; and so on. 99 is the default value to indicate that all levels in the chain
				should be included (even though the chain may or may not have 99 levels).
WIKI			https://docs.expert.ai/studio/latest/languages/attributes/list/
EXAMPLE   		nlp2.txt
*/


//SCOPE SENTENCE
//{
//	//syncon vs. list
//	IDENTIFY(TECHNOLOGIES)
//	{
//		//This rule finds and extracts the syncon number ID#100011660 artificial intelligence (branch of cybernetics)
//		@Technology[SYNCON(100011660)]//@SYN: #100011660# [artificial intelligence]
//
//		//As some of the artificial intelligence concepts of the document are resolved to artificial intelligence
//		//(a computer's ability to perform tasks requiring human intelligence)
//		//and not all of them are recognized as the definition of artificial intelligence (branch of cybernetics) ID#100011660
//		//you can use LIST to rely on sensigrafo to collect the lemmas of syncon number ID#100011660 finding its
//		//lemmas like a LEMMA attribute and not as the syncon ID#100011660
//		//@Technology[LIST(100011660)]//@SYN: #100011660# [artificial intelligence]
//
//		//Remember that LIST has the ability to navigate the knowledge graph just like ANCESTOR; this is a useful
//		//feature when you're using LIST to make collections of lemmas for specific domains or extractions.
//		//@Technology[LIST(100011660:8)]//@SYN: #100011660# [artificial intelligence]
//	}
//}



//  Rule 6 - External lists
//______________________________________________________________________________________________________________________

/*
EXPAND "filename.txt" 	To load lists of values from one or more external files
WIKI					https://docs.expert.ai/studio/latest/languages/attributes/external-files/
EXAMPLE					technology1.txt
*/

//SCOPE SENTENCE
//{
//	//robot/bot - list of lemmas, external list of lemmas, syncons, or ancestors
//	IDENTIFY(TECHNOLOGIES)
//	{
//		@Device[LEMMA("robot", "bot")]
//		//@Device[LEMMA(EXPAND "robot_lemmas.txt")]
//		//@Device[SYNCON(EXPAND "robot_syncons.txt")]
//		//@Device[ANCESTOR(EXPAND "robot_ancestors.txt")]
//	}
//}



//  Rule 7 - PATTERN and TYPE
//______________________________________________________________________________________________________________________

/*
PATTERN     	It allows to identify a token in a text defining regular expressions
TYPE			This attributes allows for using PoS tagging in your rules
				(noun=NOU, adjective=ADJ,  verb=VER, proper noun=NPR NPH=human proper noun, DAT=date,
				MON=monetary value, ADR=address, etc)
WIKI			https://docs.expert.ai/studio/latest/languages/attributes/pattern/
WIKI        	https://docs.expert.ai/studio/latest/languages/attributes/type/
EXAMPLE   		technology4.txt
*/

//SCOPE SENTENCE
//{
//	//year - pattern extraction
//	IDENTIFY(KEY_ENTITIES)
//	{
//		@Dates[PATTERN("[1-2]\d{3}")]
//	}
//}

////EXAMPLE   		technology4.txt
//SCOPE SENTENCE
//{
//	//year - pattern extraction
//	IDENTIFY(KEY_ENTITIES)
//	{
//		@Dates[TYPE(DAT)]
//	}
//}



////  Rule 8 - Combination attributes
//______________________________________________________________________________________________________________________

/*
+/-				These symbols are used to combine attributes
					Use + for: 	limiting attributes to a condition of inclusion
								(i.e. take ancestor ID#123 yet include only the ones that are of type noun)
					Use - for:  limiting attributes to a condition of exclusion
								(i.e. take ancestor ID#123 yet exclude lemmas that are listed)

WIKI      		https://docs.expert.ai/studio/latest/languages/attributes/combination/
EXAMPLE   		technology4.txt
*/


//SCOPE SENTENCE
//{
//	//This rule finds all companies by ancestor limiting  its extractions only to proper nouns whilst
//	//removing all corporations from the list (anything belonging to the ID#81203 branch)
//	IDENTIFY(KEY_ENTITIES)
//	{
//		@Companies[ANCESTOR(104830453)+TYPE(NPR)-LIST(81203:99)]//@SYN: #104830453# [company] //@SYN: #81203# [corporation]
//	}
//}



							//-------------------------------------------------------------//
							//            	  MODULE B - Boolean operators          	   //
							//-------------------------------------------------------------//



//  Rule 9 - LEMMA AND LEMMA
//______________________________________________________________________________________________________________________

/*
AND       		The Boolean operator AND combines attributes considering the presence of tokens in a text.
				It expresses conjunction, therefore it matches the presence (within a text) of both
				elements specified in the rule.
SCOPE			The scope is specified in the rule; it can range from a phrase to the entire text.
WIKI      		https://docs.expert.ai/studio/latest/languages/operators/boolean/and/
WIKI			https://docs.expert.ai/studio/latest/languages/scope/
EXAMPLE  		technology1.txt
*/


//SCOPE SENTENCE
////SCOPE SENTENCE*2
////SCOPE SECTION (BODY)
////SCOPE CLAUSE
////SCOPE PARAGRAPH
//{
//	//high-tech AND robot - syncon AND lemma
//	IDENTIFY(TECHNOLOGIES)
//	{
//		SYNCON(EXPAND "context_syncons.cl")
//		AND
//		@Device[LEMMA("robot","machine","bot")]
//	}
//}


//  Rule 10 - LEMMA AND NOT LEMMA
//______________________________________________________________________________________________________________________

/*
AND NOT   		The Boolean operator AND NOT combines attributes considering the presence/absence of tokens in a text.
				It expresses disjunction, therefore it matches the presence (within a text) of one element specified
				in the rule but not the other.
WIKI			https://docs.expert.ai/studio/latest/languages/operators/boolean/and-not/
EXAMPLE			technology1.txt
*/


//SCOPE SENTENCE
//{
//	//robot AND NOT high-tech - lemma AND NOT syncon
//	IDENTIFY(TECHNOLOGIES)
//	{
//		@Device[LEMMA("robot","machine","bot")]
//		AND NOT
//		SYNCON(107406919,167140,100027686)//@SYN: #107406919# [service] //@SYN: #167140# [roll] //@SYN: #100027686# [hotel]
//	}
//}


//  Rule 11 - ANCESTOR OR KEYWORD
//______________________________________________________________________________________________________________________

/*
OR        		The Boolean operator OR combines attributes considering the presence of tokens in a text.
				The operator OR expresses an option, therefore it matches the presence (within a text) of
				either or both elements specified in the rule.
WIKI			https://docs.expert.ai/studio/latest/languages/operators/boolean/or/
EXAMPLE			technology1.txt
*/

//SCOPE SENTENCE
//{
//	//robot OR machine - ancestor OR lemma
//	IDENTIFY(TECHNOLOGIES)
//	{
//		@Device[ANCESTOR(100011012,100787116)]//@SYN: #100011012# [robot] //@SYN: #100787116# [robot]
//		OR
//		@Device[LEMMA("machine")]
//	}
//}


						//--------------------------------------------------------------------------------//
						// 		MODULE C - Positional sequence operators; Negations in sequences		  //
						//--------------------------------------------------------------------------------//



//  Rule 12 - LEMMA >> LEMMA
//______________________________________________________________________________________________________________________

/*
>> 			 	The Positional Operator >> (strict sequence) combines attributes considering the tokens’ reciprocal
				positions in the text. Distance between tokens: no token is allowed between the two elements
				specified in the rule, with the exception of spaces.
           		Scope: Positional operators always act within a sentence.
WIKI       		https://docs.expert.ai/studio/latest/languages/operators/positional-sequences/strict/
EXAMPLE    		nettech.txt
*/

//SCOPE SENTENCE
//{
//	//5G >> metwork - keyword >> lemma
//	IDENTIFY(TECHNOLOGIES)
//	{
//		@Infrastructures[KEYWORD("5G")]
//		>>
//		LEMMA("network","infrastructure","equipment")
//
//	}
//}



//  Rule 13 - ANCESTOR > LEMMA
//______________________________________________________________________________________________________________________

/*
>     	   		The Positional Operator > (loose sequence) combines attributes considering the tokens’ reciprocal
				positions in the text. Distance between tokens: only elements with low semantic value are allowed
				(adjectives, adverbs, conjunctions, articles...)
          		Scope: Positional operators always act within a sentence.
WIKI      		https://docs.expert.ai/studio/latest/languages/operators/positional-sequences/loose/
TIP				ALLOWED: articles, adjectives, adverbs, prepositions and conjunctions;
TIP				NOT ALLOWED: nouns or verbs, punctuation (i.e. colon)
EXAMPLE   		technology3.txt
*/


//SCOPE SENTENCE
//{
// 	//person name > job role - type > ancestor
//   IDENTIFY(KEY_ENTITIES)
//    {
//        @People[TYPE(NPH)]
//        >
//        ANCESTOR(100327055)//@SYN: #100327055# [working person]
//    }
//}


//This rule applies to all occurrences of a person name close (up to 5 words distance) to any
//professional role or institution title. Loose operator requires that the two tokens matched by the
//operands on its sides are positioned one after the other and in the same sentence, without any token
//between them or separated only by tokens with low semantic value, that is articles, adjectives, adverbs,
//prepositions and conjunctions. For this reason, loose sequence is the perfect attribute to use
//when you need to combine attributes that are close and well connected within the sentence.



//  Rule 14 - ANCESTOR <> ANCESTOR
//______________________________________________________________________________________________________________________

/*
<>     	  		The Positional Operator <> (flexible sequence) combines attributes considering tokens’ reciprocal
				positions in the text. Distance between tokens: any token is accepted between the two elements.
				The boundaries for the operator are the beginning and the end of each sentence.
            	Scope: Positional operators always act within a sentence.
WIKI        	https://docs.expert.ai/studio/latest/languages/operators/positional-sequences/flexible/
EXAMPLE     	nettech.txt
*/

//SCOPE SENTENCE
//{
//	//country > device - ancestor <> ancestor
//	IDENTIFY(TECHNOLOGIES)
//	{
//		ANCESTOR(103624078,288263)//@SYN: #103624078# [country] //@SYN: #288263# [tag_adj_nationality]
//		<>
//		@Device[ANCESTOR(117105975,100026540,101183543)]//@SYN: #117105975# [space vehicle] //@SYN: #100026540# [satellite]
//	}
//}

////EXAMPLE     	nettech.txt
//SCOPE SENTENCE
//{
//	//country > device - ancestor <:#> ancestor
//	IDENTIFY(TECHNOLOGIES)
//	{
//		ANCESTOR(103624078,288263)//@SYN: #103624078# [country] //@SYN: #288263# [tag_adj_nationality]
//		<:4>
//		@Device[ANCESTOR(117105975,100026540,101183543)]//@SYN: #117105975# [space vehicle] //@SYN: #100026540# [satellite]
//	}
//}


////EXAMPLE     	nettech.txt
//SCOPE SENTENCE
//{
//	//OPERAND 1 <5:> OPERAND 1 -> applies to an operand 1 followed by another at AT LEAST a distance of 5 tokens
//	//country > device - ancestor <#:> ancestor
//	IDENTIFY(TECHNOLOGIES)
//	{
//		ANCESTOR(103624078,288263)//@SYN: #103624078# [country] //@SYN: #288263# [tag_adj_nationality]
//		<5:>
//		@Device[ANCESTOR(117105975,100026540,101183543)]//@SYN: #117105975# [space vehicle] //@SYN: #100026540# [satellite]
//	}
//}


////EXAMPLE     	nettech.txt
//SCOPE SENTENCE
//{
//	//You can also mix the two approaches such as <2:8> (at least a distance of 2 tokens and maximum 8)
//	//country > device - ancestor <#:#> ancestor
//	IDENTIFY(TECHNOLOGIES)
//	{
//		ANCESTOR(103624078,288263)//@SYN: #103624078# [country] //@SYN: #288263# [tag_adj_nationality]
//		<2:8>
//		@Device[ANCESTOR(117105975,100026540,101183543)]//@SYN: #117105975# [space vehicle] //@SYN: #100026540# [satellite]
//	}
//}


////EXAMPLE     	nettech.txt
//SCOPE SENTENCE
//{
//	//You can also use a different mixed approach such as <-8:8> (either followed or preceded by the lemmas at a distance of 8 tokens.)
//	//equipment > 5G - lemma <#:#> keyword
//	IDENTIFY(TECHNOLOGIES)
//	{
//		LEMMA("equipment","network","infrastructure")
//		<-8:8>
//		@Technology[KEYWORD("5G")]
//	}
//}



//  Rule 15 - !SYNCON >> LEMMA
//______________________________________________________________________________________________________________________

/*
!           	The exclamation point operator allows users to negate the position of a token within a sequence
				You can use ! next to any of the basic attributes with any of the positiona sequence operators
WIKI        	https://docs.expert.ai/studio/latest/languages/operators/positional-sequences/negation/
EXAMPLE:    	technology4.txt
*/

//SCOPE SENTENCE
//{
//	//(not) country <> device - !ancestor >> ancestor
//	IDENTIFY(TECHNOLOGIES)
//	{
//		!ANCESTOR(103624078,288263)//@SYN: #103624078# [country] //@SYN: #288263# [tag_adj_nationality]
//		<>
//		@Device[ANCESTOR(117105975,100026540,101183543)-LEMMA("mouse")]//@SYN: #117105975# [space vehicle] //@SYN: #100026540# [satellite]
//	}
//}





						//-------------------------------------------------------------//
						//            	  MODULE D - NEXT operators      	    	   //
						//-------------------------------------------------------------//



//  Rule 16 - NEXT and NEXT NOT
//______________________________________________________________________________________________________________________

/*
NEXT        	NEXT is an operator that combines the Boolean operator AND with the flexible positional
				sequence operator (<>). NEXT and NEXT NOT will work exactly like AND and AND NOT yet matching the
				operands sequence order (unlike the AND operator, with NEXT the OPERAND2 will always follow OPERAND1
				in any position of the sentence).
WIKI        	https://docs.expert.ai/studio/latest/languages/operators/next/
EXAMPLE		  	technology4.txt
*/

//SCOPE SENTENCE*2
//{
//	//spacecraft NEXT (rocket OR SpaceX) - ancestor NEXT (syncon OR lemma)
//	IDENTIFY(TECHNOLOGIES)
//	{
//		@Vehicle[ANCESTOR(100040218)]// # 100040218: spacecraft, spaceship
//		NEXT
//		(
//			SYNCON(100041291)		// # 100041291: rocket, rocket vehicle
//			OR
//			LEMMA("SpaceX")
//		)
//	}
//}


////EXAMPLE		  	technology4.txt
//SCOPE SENTENCE*2
//{
//	//spacecraft NEXT NOT (rocket OR SpaceX) - ancestor NEXT NOT (lemma)
//	IDENTIFY(TECHNOLOGIES)
//	{
//		@Vehicle[ANCESTOR(100040218)]// # 100040218: spacecraft, spaceship
//		NEXT NOT
//		LEMMA("SpaceX")
//	}
//}



						//------------------------------------------------//
						// 		MODULE E - values TRANSFORMATION		  //
						//------------------------------------------------//


//  Rule 17 - Extracted values TRANSFORMATION
//______________________________________________________________________________________________________________________

/*
|[]         	Syntax used to add a TRANSFORMATION command to the rule. Transformation is an optional
				part in the association of tokens and fields, it controls what is transferred into the field.
TEXT        	TEXT is the extraction transformation option that allows you to keep what is matched by the
				attribute into its original form.
BASE			BASE is the extraction transformation option that transforms what is matched by the
				attribute into its base form.
WIKI			https://docs.expert.ai/studio/latest/languages/extraction/transformation/
WIKI			https://docs.expert.ai/studio/latest/languages/extraction/transformation/text/
WIKI			https://docs.expert.ai/studio/latest/languages/extraction/transformation/base/
EXAMPLE     	technology4.txt
*/

//SCOPE SENTENCE
//{
//	//BASE and TEXT transformations are a good choice for nouns and numbers!
//	IDENTIFY(TECHNOLOGIES)
//	{
//		@Device[ANCESTOR(117105975)]|[TEXT] //@SYN: #117105975# [space vehicle]
//		//@Device[ANCESTOR(117105975)]|[BASE] //@SYN: #117105975# [space vehicle]
//	}
//}

////EXAMPLE     	technology4.txt
//SCOPE SENTENCE
//{
//	//SMARTENTRY transformation is a better choice for extracting and normalizing entities and proper nouns!
//	IDENTIFY(KEY_ENTITIES)
//	{
//		@Companies[ANCESTOR(104830453)+TYPE(NPR)]//@SYN: #104830453# [company]
//		//@Companies[ANCESTOR(104830453)+TYPE(NPR)]|[SMARTENTRY]//@SYN: #104830453# [company]
//	}
//}



//  Rule 18 - Restrict extraction using positional operators but extract values for just one field
//______________________________________________________________________________________________________________________

/*
<n:n>			Positional operators - flexible sequence with range: It combines attributes considering the tokens'
				reciprocal positions in the text.
		  		Distance between tokens: from 1 to 3 tokens are allowed to exist between the two elements specified in the rule.
          		Scope: Positional operators always act within a sentence.
|[]    			Syntax used to add a transformation or composition command to the rule. Transformation is an optional
				part in the association of tokens and fields, it controls what is transferred into the field.
SEQUENCE		Transformation option that returns all the elements included in a rule's sequence along with the value
				matched by an attribute enclosed in the extraction syntax.
|[]       		Syntax used to add a transformation or composition command in the rule. Composition is an optional
				part in the association of tokens and fields; it assembles the information in the text to return complete
				and non redundant extraction data by combining several elements of a positional or logical sequence.
#n				Composition syntax indicating the position and order of the value blocks [in this case block #2 is
				also transformed into its BASE form)
WIKI			https://docs.expert.ai/studio/latest/languages/operators/positional-sequences/flexible/
WIKI			https://docs.expert.ai/studio/latest/languages/extraction/transformation/sequence/
WIKI			https://docs.expert.ai/studio/latest/languages/extraction/composition/
WIKI			https://docs.expert.ai/studio/latest/languages/extraction/transformation-and-composition/
EXAMPLE     	nlp2.txt
*/

//SCOPE SENTENCE
//{
//	//natural language understanding - sequence
// 	IDENTIFY(TECHNOLOGIES)
//	{
//		@NLP[SYNCON(100033742)]|[SEQUENCE]//@SYN: #100033742# [natural language]
//		<:5>
//		LEMMA("understanding","understand")
//		//With SEQUENCE transformation disabled: extracts any occurrence of "natural language" followed
//		//by the "understand" or "understanding" lemma
//		//With SEQUENCE transformation enabled: outcomes a string containing the whole extension of the
//		//rule extracting all text found from  "natural language" to the first occurrence of
//		//the "understand" or "understanding" lemmas at a maximum distance of 5 words
//		//(i.e. "natural-language analysis and understanding")
//	}
//}

////EXAMPLE     	nlp2.txt
//SCOPE SENTENCE
//{
//	//natural language understanding - composition
// 	IDENTIFY(TECHNOLOGIES)
//	{
//		@NLP[SYNCON(100033742)]|[BASE#1]//@SYN: #100033742# [natural language]
//		<:5>
//		@NLP[LEMMA("understanding","understand")]|[TEXT#2]
//		//With COMPOSITION you compose extractions to outcome a string made of the different words you
//		//find with the rule (you can decide the tokens order and/or the normalization too!)
//	}
//}


						//------------------------------------------------------------------------------//
						// 		MODULE F - record AGGREGATION techniques : By-rule aggregation;         //
						//				   MERGE rules; CARDINAL;									    //
						//				   operators: Logical operators								    //
						//				   atributes: SYNCON UNKNOWN 							  	    //
						//------------------------------------------------------------------------------//




										//BY-RULE AGGREGATION//


//  Rule 19 - Relationship mining  - By-rule aggregation as an example to extract relationships from text
//______________________________________________________________________________________________________________________

/*
<n:n>     		Positional operators - flexible sequence with range: It combines attributes considering the tokens'
				reciprocal positions in the text. Each # sign stands for the minimum number and the maximun number
				of tokens allowed between the two elements in the rule. Distance between tokens: As specified by the
				values expressed as #:# (in this rule the distance between the two elements can be from 1 to 5 tokens)
          		Scope: Positional operators always act within a sentence.
&VO &SV			The Logical Operator &VO and &SV link verbs with its direct object or subject.
                Scope: Logical operators always act within a sentence.
WIKI     		https://docs.expert.ai/studio/latest/languages/operators/positional-sequences/flexible/
WIKI			https://docs.expert.ai/studio/latest/languages/operators/logical/
EXAMPLE			technology6.txt
*/


//SCOPE SENTENCE
//{
//    IDENTIFY(RELATIONSHIPS)
//    {
//        @Subject[ANCESTOR(104830453)+TYPE(NPR)]//@SYN: #104830453# [company]
//        &SV
//        @Action[TYPE(VER)]|[BASE]
//        &VO
//        @Object[ANCESTOR(104830453)+TYPE(NPR)]//@SYN: #104830453# [company]
//    }
//}

//Logical operators behave like Boolean operators meaning you can't use negations
//Even though Logical operators are very powerful, sometimes you may need the extra flexibility of positional sequence
//Example below shows how you can extract the same relationships without relying on Logical Operators whilst
//using Positional sequence

////EXAMPLE			technology6.txt
//SCOPE SENTENCE
//{
//    IDENTIFY(RELATIONSHIPS)
//    {
//        @Subject[ANCESTOR(104830453)+TYPE(NPR)]//@SYN: #104830453# [company]
//        <:8>
//        @Action[TYPE(VER)]|[BASE]
//        >>
//        !KEYWORD("that")
//        <:8>
//        @Object[ANCESTOR(104830453)+TYPE(NPR)]//@SYN: #104830453# [company]
//    }
//}






                                          //MERGE OPTION//
                //  Merge Options and Cardinal: a different way to aggregate data extractions

TEMPLATE(MERGE_ARTICLE_DATA)
{
	@Author,
	@Role,
	@Company,
	@Date,
	@Time
    //Apply the rules below with no active MERGE option, then try and activate one or the other ones below
    //MERGE WHEN SENTENCE
	//MERGE WHEN SECTION
}


//  Rule 20 - POSITION and SYNCON(UNKNOWN)
//______________________________________________________________________________________________________________________

/*
SYNCON(UNKNOWN)	    It identifies tokens which are not contained in (unknown to) the Sensigrafo
POSITION            It identifies a token by specifying its position(beginning or end) within the whole document,
                    a paragraph or a sentence
MERGE OPTION        MERGE aggregation rule: Aggregates extracted data into a given template based on a specific
                    portion of text, which is identified in the rule itself
WIKI				https://docs.expert.ai/studio/latest/languages/attributes/syncon/#with-unknown
WIKI                https://docs.expert.ai/studio/latest/languages/attributes/position/
WIKI                https://docs.expert.ai/studio/latest/languages/extraction/structures/merge-option/
EXAMPLE             biotech1.txt
*/

//SCOPE SENTENCE
//{
//    IDENTIFY(MERGE_ARTICLE_DATA)
//    {
//        KEYWORD("by") + POSITION(BEGIN SENTENCE)
//        >>
//        @Author[TYPE(NPH)]
//    }
//
//     IDENTIFY(MERGE_ARTICLE_DATA)
//    {
//        @Author[TYPE(NPH)+ POSITION(BEGIN SECTION)]
//    }
//
//   IDENTIFY(MERGE_ARTICLE_DATA)
//    {
//        TYPE(NPH)
//        >
//        @Role[ANCESTOR(46433,100327055)]//@SYN: #46433# [inventor] //@SYN: #100327055# [working person]
//    }
//
//    IDENTIFY(MERGE_ARTICLE_DATA)
//    {
//        @Company[ANCESTOR(104830453)+TYPE(NPR)+SYNCON(UNKNOWN)]//@SYN: #104830453# [company]
//    }
//
//    IDENTIFY(MERGE_ARTICLE_DATA)
//    {
//        @Company[ANCESTOR(100483242)+TYPE(NPR)-SYNCON(UNKNOWN)]//@SYN: #100483242# [laboratory]
//    }
//
//    IDENTIFY(MERGE_ARTICLE_DATA)
//    {
//        @Date[TYPE(DAT)]
//        >
//        @Time[ANCESTOR(100025235)]//@SYN: #100025235# [hour]
//    }
//}


                                            //CARDINAL OPTION//

/*
SYNCON(UNKNOWN)	    It identifies tokens which are not contained in (unknown to) the Sensigrafo
POSITION            It identifies a token by specifying its position(beginning or end) within the whole
                    document, a paragraph or a sentence
MERGE OPTION        MERGE aggregation rule: Aggregates extracted data into a given template based on a
                    specific portion of text, which is identified in the rule itself
WIKI				https://docs.expert.ai/studio/latest/languages/attributes/syncon/#with-unknown
WIKI                https://docs.expert.ai/studio/latest/languages/attributes/position/
WIKI                https://docs.expert.ai/studio/latest/languages/extraction/structures/merge-option/
EXAMPLE             biotech1.txt
*/

TEMPLATE(CARDINAL_ARTICLE_DATA)
{
	@Author(C),
	@Role,
	@Company
	MERGE WHEN DOCUMENT
}

//The field attribute, "Cardinal", allows a field to act as a "pivot", which can attract the information surrounding it.
//Special use of MERGE OPTIONS with CARDINAL: allows the system for creating complex records containing all the
//information related to a "cardinal" field.
//WIKI https://docs.expert.ai/studio/latest/languages/extraction/structures/field-attributes/#cardinal-field


//SCOPE SENTENCE
//{
//    IDENTIFY(CARDINAL_ARTICLE_DATA)
//    {
//        KEYWORD("by") + POSITION(BEGIN SENTENCE)
//        >>
//        @Author[TYPE(NPH)]
//    }
//
//   IDENTIFY(CARDINAL_ARTICLE_DATA)
//    {
//        @Author[TYPE(NPH)]
//        >
//        @Role[ANCESTOR(46433,100327055)]//@SYN: #46433# [inventor] //@SYN: #100327055# [working person]
//    }
//
//    IDENTIFY(CARDINAL_ARTICLE_DATA)
//    {
//        @Author[TYPE(NPH)]
//        <:5>
//        @Company[ANCESTOR(104830453)+TYPE(NPR)+SYNCON(UNKNOWN)]//@SYN: #104830453# [company]
//    }
//}
