


//  Configure your Classification nodes
//______________________________________________________________________________________________________________________

/*
	  Head over to the Taxonomy panel to view the "Technology Taxonomy" already created for you with Classification
	  nodes that have Names that are codes that will be used in classification rules and Descriptions that are
	  helpful for you to keep track of the category definitions.
*/

//______________________________________________________________________________________________________________________



							//----------------------------------------------------//
							//        MODULE A - Basic ATTRIBUTES                 //
							//					 Combination of attributes        //
							//----------------------------------------------------//



//  Rule 1 - KEYWORD
//______________________________________________________________________________________________________________________

/*
KEYWORD				It identifies a token by specifying - between quotation marks - the exact sequence of characters
					that has to be found in a text
LOW/NORMAL/HIGH		the default score options available; it is used to set the relative relevance of a rule's match
WIKI				https://docs.expert.ai/studio/latest/languages/attributes/keyword/
EXAMPLE				technology1.txt
*/

//SCOPE SENTENCE
//{
//	//robots - keyword
//	DOMAIN(T2.08:NORMAL)
//	//DOMAIN(T1.01:LOW)
//	//DOMAIN(T1.01:HIGH)
//	{
//		KEYWORD("robots")
//		//KEYWORD("robots", "bots")
//	}
//}

//no semantics, but useful with slangs and technicalities



//  Rule 2 - LEMMA
//______________________________________________________________________________________________________________________

/*
LEMMA				It identifies a token by specifying  - between quotation marks - its base form,
					which is obtained during the disambiguation process; even flexed forms are matched
WIKI				https://docs.expert.ai/studio/latest/languages/attributes/lemma/
EXAMPLE				technology1.txt
*/

//SCOPE SENTENCE
//{
//	//robot - lemma
//	DOMAIN(T2.08:NORMAL)
//	{
//		LEMMA("robot")
//	}
//}



//  Rule 3 - LEMMA, LEMMA
//______________________________________________________________________________________________________________________

/*
LEMMA   			It identifies a token by specifying  - between quotation marks - its base form,
					which is obtained during the disambiguation process; even flexed forms are matched
		   			Lemmas can be listed in the same rule, putting them between quotation marks
					and separating them with commas
WIKI				https://docs.expert.ai/studio/latest/languages/attributes/lemma/
EXAMPLE				technology1.txt
*/

//SCOPE SENTENCE
//{
//	//robot/bot - list of lemmas
//	DOMAIN(T2.08:NORMAL)
//
//	{
//		LEMMA("robot", "bot")
//	}
//}



//  Rule 4 - SYNCON
//______________________________________________________________________________________________________________________

/*
SYNCON			Identifies a token by specifying its syncon number (ID. It allows to choose a concept
				from the sensigrafo and match all the lemmas it contains)
WIKI			https://docs.expert.ai/studio/latest/languages/attributes/syncon/
EXAMPLE			technology1.txt
*/

//SCOPE SENTENCE
//{
//	//robot - syncon
//	DOMAIN(T2.08:NORMAL)
//	{
//		SYNCON(100787116,100011012)//# 100787116: robot, automata, automaton, golem; 100011012: robot, bot
//	}
//}



//  Rule 5 - ANCESTOR
//______________________________________________________________________________________________________________________

/*
ANCESTOR			It identifies a token by specifying its syncon number (ID) and considering this
					concept as a chain’s starting node.
					Any token disambiguated as a syncon belonging to this chain will be identified.
WIKI				https://docs.expert.ai/studio/latest/languages/attributes/ancestor/
EXAMPLE			technology1.txt
*/

//SCOPE SENTENCE
//{
//	//machine - ancestor
//	DOMAIN(T2.08:NORMAL)
//	{
//		ANCESTOR(100011019)// # 100011019: machine, mach.
//	}
//}

/*
99 					The value that follows the syncon’s ID: can range from 1 to 99. It  indicates the number
					of levels to be considered in the chain of concepts that has been selected.
					A value of 1 will include only the starting node and its first level of children within the chain;
					a value of 2 will include the starting node and its  first and second level of children
					within the chain; and so on. 99 is the default value to indicate that all levels in the chain
					should be included (even though the chain may or may not have 99 levels).

					supernomen/subnomen= relation between nouns meaning "type of" (both nouns & proper nouns are
					included in the chain). This the default link when using the attribute ANCESTOR and
					no link has been specified.

					syncon/geography= relation among administrative geographical elements indicating geographical
					inclusion (only proper nouns are in the chain)

					omninomen/parsnomen= relation between nouns meaning "part/whole"
					(both nouns & proper nouns are included in the chain)
*/

////EXAMPLE			technology2.txt
//SCOPE SENTENCE
//{
//	//motor vehicle - ancestor
//	DOMAIN(T2.05:NORMAL)
//	{
//		ANCESTOR(100752870:2)// # 100752870: motor vehicle, motorized vehicle, motorised vehicle
//	}
//}


////EXAMPLE			technology5.txt
//SCOPE SENTENCE
//{
//	//car - ancestor
//	//omninomen/parsnomen
//	DOMAIN(T2.05:NORMAL)
//	{
//		ANCESTOR(100001420:99:omninomen/parsnomen)// # 100001420: car, passenger car, jam jar, mobile, automobile, motorcar, mach., machine, auto, tag_car
//	}
//}

////EXAMPLE			uncategorized1.txt
//SCOPE SENTENCE
//{
//	//Europe - ancestor
//	//syncon/geography
//	DOMAIN(U1:NORMAL)
//	{
//		ANCESTOR(100000046:99:syncon/geography)// # 100000046: Europe, Eur.
//	}
//}



////  Rule 6 - LIST
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
EXAMPLE   		technology2.txt
*/

//SCOPE SENTENCE
//{
//	//syncon vs. list
//	DOMAIN(T2.05:NORMAL)
//	{
//		//This rule applies a T2.05 category to any document containing the concept of "transportation" ID#21785
//		SYNCON(21785)//# 21785: transportation, transport system, transportation system, transit, transp.
//
//		//With LIST instead you rely on the sensigrafo to make collections of lemmas gathered the sensigrafo
//		//concepts you select and apply them as lemmas and not as syncons
//		//LIST(21785)//# 21785: transportation, transport system, transportation system, transit, transp.
//	}
//}



//  Rule 7 - External lists
//______________________________________________________________________________________________________________________

/*
EXPAND "filename.txt" 	To load lists of values from one or more external files
WIKI					https://docs.expert.ai/studio/latest/languages/attributes/external-files/
EXAMPLE					technology1.txt
*/

//SCOPE SENTENCE
//{
//	//robot/bot - list of lemmas
//	DOMAIN(T2.08:NORMAL)
//
//	{
//		LEMMA("robot", "bot")
//		//LEMMA(EXPAND "robot_lemmas.txt")
//		//SYNCON(EXPAND "robot_syncons.txt")
//		//ANCESTOR(EXPAND "robot_ancestors.txt")
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

TYPE			This attributes allows for using PoS tagging in your rules
				(noun=NOU, adjective=ADJ,  verb=VER, proper noun=NPR NPH=human proper noun,
				DAT=date, MON=monetary value, ADR=address, etc)
WIKI			https://docs.expert.ai/studio/latest/languages/attributes/type/
WIKI      		https://docs.expert.ai/studio/latest/languages/attributes/combination/
EXAMPLE   		technology2.txt
*/

//SCOPE SENTENCE
//{
//		//Trigger all companies names only when they're proper nouns
//	DOMAIN(T2.05:NORMAL)
//	{
//		ANCESTOR(104830453) + TYPE(NPR)
//		// # 104830453: company, business firm, business organisation, enterprise, house, tag_impresa,
//		//firm, business organization, establishment, co, co., bus., Co, Co., tag_company
//	}
//}

////EXAMPLE			uncategorized2.txt
//SCOPE SENTENCE
//{
//		//Trigger all food and the concepts that are children nodes to it except the lemmas ice and mixture
//	DOMAIN(U1:NORMAL)
//	{
//		ANCESTOR(100002095) - LEMMA("ice","mixture")
//		// # 100002095: food
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
//	DOMAIN(T2.08:NORMAL)
//	{
//		SYNCON(170008,100466410,100010931,100215627,167140)
//		// # 170008: talk; 100466410: high-tech, high tech, high technology, mechanisation, mechanization,
//		//automation, hi tech; 100010931: revolution, rev.; 100215627: person, human, man, peep, somebody,
//		//someone, soul, indiv., mortal, human being, cat. person; 167140: roll
//		AND
//		LEMMA("robot","machine")
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
//	DOMAIN(T2.08:NORMAL)
//	{
//		LEMMA("robot","machine")
//		AND NOT
//		SYNCON(170008,100466410,100010931,100215627,167140)
//		// # 170008: talk; 100466410: high-tech, high tech, high technology, mechanisation, mechanization,
//		//automation, hi tech; 100010931: revolution, rev.; 100215627: person, human, man, peep, somebody,
//		//someone, soul, indiv., mortal, human being, cat. person; 167140: roll
//	}
//}


//  Rule 11 - ANCESTOR OR KEYWORD
//______________________________________________________________________________________________________________________

/*
OR        		The Boolean operator OR combines attributes considering the presence of tokens in a text.
				The operator OR expresses an option, therefore it matches the presence (within a text) of
				either or both elements specified in the rule.
WIKI			https://docs.expert.ai/studio/latest/languages/operators/boolean/or/
EXAMPLE			technology4.txt
*/

//SCOPE SENTENCE
//{
//	//spacecraft OR rocket OR SpaceX - ancestor OR syncon OR lemma
//	DOMAIN(T2.09:NORMAL)
//	{
//		ANCESTOR(100040218)// # 100040218: spacecraft, spaceship
//		OR
//		SYNCON(100041291)// # 100041291: rocket, rocket vehicle
//		OR
//		LEMMA("SpaceX")
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
EXAMPLE    		nlp1.txt
*/

//SCOPE SENTENCE
//{
//	//probabilistic >> model - lemma >> lemma
//	DOMAIN(T2.11:NORMAL)
//	{
//		LEMMA("statistical","computational","probabilistic","computational")
//		>>
//		LEMMA("model")
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
EXAMPLE   		nlp1.txt
*/

//SCOPE SENTENCE
//{
//	//communicate > human - lemma > lemma
//	//robot > language - lemma > lemma
//	DOMAIN(T2.11:NORMAL)
//	{
//		LEMMA("communicate","robot")
//		>
//		LEMMA("human language")
//	}
//}

//This rule applies to "communicate seamlessly with humans" and not to "that could allow robots to process human language"
//even though "communicate"-"human language" and "robot"-"human language" are both two tokens away like the previous

//"process" is a high semantic value verb and it breaks the connection between "robot" and "human language"
//For this reason, loose sequence is the perfect operand to use when you need to combine attributes that
//are near, very connected, and unsplit by other semantic items



//  Rule 14 - ANCESTOR <> ANCESTOR
//______________________________________________________________________________________________________________________

/*
<>     	  		The Positional Operator <> (flexible sequence) combines attributes considering tokens’ reciprocal
				positions in the text. Distance between tokens: any token is accepted between the two elements.
				The boundaries for the operator are the beginning and the end of each sentence.
            	Scope: Positional operators always act within a sentence.
WIKI        	https://docs.expert.ai/studio/latest/languages/operators/positional-sequences/flexible/
EXAMPLE     	nlp1.txt
*/

//SCOPE SENTENCE
//{
//	//researcher <> present - syncon <> list
//	DOMAIN(T2.11:NORMAL)
//	{
//		SYNCON(101650915)//# 101650915: researcher, research worker, researchist, investigator
//		<>
//		LIST(75438)//# 75438: display, present
//	}
//}


////EXAMPLE     	nlp1.txt
//SCOPE SENTENCE
//{
//	//While <> takes the sequence of the two operands at any distance in the sentence, by using colon followed
//	//by a numner, you can limit the distance by words/tokens position
//	//OPERAND 1 <:3> OPERAND 2 -> applies to an operand 1 followed by another at a distance of maximum 3 tokens
//	//present <:3> model - list <:3> lemma
//	DOMAIN(T2.11:NORMAL)
//	{
//		LIST(75438) //# 75438: display, present
//		<:3>
//		LEMMA("model")
//	}
//}

////EXAMPLE     	nlp1.txt
//SCOPE SENTENCE
//{
//	//OPERAND 1 <4:> OPERAND 2 -> applies to an operand 1 followed by another at a distance of at least 4 tokens
//	//model <:3> natural language - syncon <4:> syncon
//	DOMAIN(T2.11:NORMAL)
//	{
//		SYNCON(102623243)//@SYN: #102623243# [theoretical account]
//		<4:>
//		SYNCON(100033742)//@SYN: #100033742# [natural language]
//	}
//}

////EXAMPLE     	nlp1.txt
//SCOPE SENTENCE
//{
//	//OPERAND 1 <2:4> OPERAND 2 -> applies to an operand 1 followed by another at a distance of at least 2 tokens but and a maximum of 4.
//	//robot <:3> human language/response - lemma <2:4> syncon
//	DOMAIN(T2.11:NORMAL)
//	{
//		LEMMA("robot")
//		<2:4>
//		SYNCON(108018506,100034770)//@SYN: #108018506# [answer] //@SYN: #100034770# [human language]
//	}
//}


////EXAMPLE     	nlp1.txt
//SCOPE SENTENCE
//{
//	//OPERAND 1 <-10:10> OPERAND 2 -> applies to an operand 1 either followed or preceded by another at a distance of 10 tokens.
//	//model <:3> cognitive status - lemma <-10:10> keyword
//	DOMAIN(T2.11:NORMAL)
//	{
//		LEMMA("model")
//		<-10:10>
//		KEYWORD("cognitive status")
//	}
//}



//  Rule 15 - !SYNCON >> LEMMA
//______________________________________________________________________________________________________________________

/*
!           	The exclamation point operator allows users to negate the position of a token within a sequence
				You can use ! next to any of the basic attributes with any of the positiona sequence operators
WIKI        	https://docs.expert.ai/studio/latest/languages/operators/positional-sequences/negation/
EXAMPLE:    	nlp2.txt
*/

//SCOPE SENTENCE
//{
//	//natural language >> (not) input,interface - syncon >> !lemma
//	DOMAIN(T2.11:NORMAL)
//	{
//		SYNCON(100033742)//# 100033742: natural language
//		>>
//		!LEMMA("input","interface")
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
				operands sequence order outside of a single sentence scope.
TIP				Use this operator on multiple sentences.
WIKI        	https://docs.expert.ai/studio/latest/languages/operators/next/
EXAMPLE		  	technology4.txt
*/

//SCOPE SENTENCE*2
//{
//	//spacecraft NEXT (rocket OR SpaceX) - ancestor NEXT (syncon OR lemma)
//	DOMAIN(T2.09:NORMAL)
//	{
//		ANCESTOR(100040218)// # 100040218: spacecraft, spaceship
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
//	DOMAIN(T2.09:NORMAL)
//	{
//		ANCESTOR(100040218)// # 100040218: spacecraft, spaceship
//		NEXT NOT
//		LEMMA("SpaceX")
//	}
//}



							//--------------------------------------------------------------------//
							//        			MODULE E  -  Subrules                             //
							//                   			 IF DOMAIN SCOPE                      //
							//                   			 RELEVANT                             //
							//--------------------------------------------------------------------//



//  Rule 17 - LEMMA AND #SUB-RULE
//______________________________________________________________________________________________________________________

/*
SUB-RULE    	A sub-rule is a linguistic condition that has been given a name and that can be used in other rules.
				It has to be defined before its name can be used in rules
WIKI        	https://docs.expert.ai/studio/latest/languages/condition/sub-rules/
EXAMPLE	    	nlp2.txt
*/

#NLPandNLU# = SYNCON(100033742) >> LEMMA("understand","understanding")//# 100033742: natural language
				OR
				SYNCON(100033742) >> LEMMA("interpretation")//# 100033742: natural language
				OR
				KEYWORD("NLU","NLI");


//SCOPE PARAGRAPH
//{
//	DOMAIN(T2.11:NORMAL)
//	{
//		LIST(32792,100011660,200483,100000068)
//		// # 32792: language, lang.; 100011660: artificial intelligence, AI, A.I.; 200483: artificial
//		//intelligence, machine intelligence, AI, A.I.; 100000068: computer, electronic computer,
//		//data processor, information processing system, elaborator, electronic elaborator, machine
//		AND
//		#NLPandNLU#
//	}
//}



//  Rule 18 - SCOPE SENTENCE IF DOMAIN
//______________________________________________________________________________________________________________________

/*
IF DOMAIN		Applies the rule only if the selected standard domain has been associated to the text.
WIKI			https://docs.expert.ai/studio/latest/languages/scope/domain-constraints/
EXAMPLE			nettech.txt
*/

//SCOPE SENTENCE IF DOMAIN (telecommunications,technology)
//{
//	//network, technology, infrastructure are all pretty common lemmas you can accurately
//	//apply only to telecommunication and technology domains with DOMAIN based scopes
//	DOMAIN(T2.07:NORMAL)
//	{
//		LEMMA("network","technology","infrastructure")
//	}
//}


//  Rule 19 - RELEVANT information
//______________________________________________________________________________________________________________________

/*
RELEVANT    	It identifies a token by verifying if it is a "relevant" element in the text
				(i.e. contained in the Relevant Information panel)
WIKI       		https://docs.expert.ai/studio/latest/languages/attributes/relevant/
EXAMPLE	 		technology4.txt
*/

//SCOPE SENTENCE
//{
//	//use the RELEVANT attribute alone to identify relevant items of your document or...
//	DOMAIN(T2.09:NORMAL)
//	{
//			ANCESTOR(117105975) + RELEVANT(LEMMA)
//	}
//}
//

////EXAMPLE	 		technology4.txt
//SCOPE SENTENCE
//{
//	//use the RELEVANT attribute alone to identify relevant items of your document or...
//	DOMAIN(T2.09:NORMAL)
//	{
//			ANCESTOR(100011631) + RELEVANT(SYNCON)
//	}
//}

////EXAMPLE	 		technology4.txt
//SCOPE SENTENCE
//{
//	//use it in combination with other attributes.
//	DOMAIN(T2.09:NORMAL)
//	{
//		ANCESTOR(100011631,2983,117105975,100011436) + RELEVANT(SYNCON,LEMMA)//@SYN: #100043229# [organization]
//	}
//}
