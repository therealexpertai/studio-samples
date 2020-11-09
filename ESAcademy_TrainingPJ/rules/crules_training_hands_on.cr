


							//----------------------------------------------------//
							//        MODULE A - Basic ATTRIBUTES                 //
							//					 Combination of attributes        //
							//----------------------------------------------------//



//  KEYWORD
//	 no semantics, but useful with slangs and technicalities
//______________________________________________________________________________________________________________________

// Rule 1
//	Write a KEYWORD rule that finds "robots" in the document technology1.txt






// Rule 2
//	Write a KEYWORD rule that finds "Robots" in the document technology1.txt







// Rule 3
//	Write a KEYWORD rule that finds "robot","robots","bot","bots" in the document technology1.txt








// Rule 4
//	Write a KEYWORD rule that uses a list to find the robot terms in the document technology1.txt






//  LEMMA
//	 identifies a token by specifying its base form, also matches flexed forms
//______________________________________________________________________________________________________________________

// Rule 5
//	Write a LEMMA rule that finds "robot" in the document technology1.txt








// Rule 6
//	Write a LEMMA rule that finds "robot" and "bot" in the document technology1.txt












//  SYNCON
//	 identifies a token by specifying its syncon number, also matches on synonyms in the Sensigrafo
//______________________________________________________________________________________________________________________


// Rule 7
//	Write a SYNCON rule that finds "robot" in the document technology1.txt
//# 100787116: robot, automata, automaton, golem; 
//# 100011012: robot, bot















//  ANCESTOR
//	 identifies a token by specifying its syncon number and considering this last as a chain’s starting node,
//   matching on all the synonyms in the Sensigrafo
//______________________________________________________________________________________________________________________


// Rule 8
//	Write an ANCESTOR rule that finds "robot" in the document technology1.txt
// # 100011019: machine, mach.









// Rule 9
//	Write an ANCESTOR rule that finds motor vehicles in the document technology2.txt using up to 99 links
// # 18381: motor vehicle, automotive vehicle        18381:99:supernomen/subnomen











// Rule 10
//	Write an ANCESTOR rule that finds vehicles in the document technology2.txt using up to 99 links
// # 100042889: vehicle, cat. vehicle               100042889:99:supernomen/subnomen









// Rule 11
//	Write an ANCESTOR rule that finds cars in the document technology5.txt using up to 99 omninomen/parsnomen links
// # 100001420: car, passenger car, jam jar, mobile, automobile, motorcar, mach., machine, auto, tag_car               
// 100001420:99:omninomen/parsnomen











// Rule 12
//	Write an ANCESTOR rule that finds Geneva in the document technology5.txt using up to 99 syncon/geography links
// # 16226411: Europe, Eur.								16226411:99:syncon/geography












//  LIST
//	 identifies a token by specifying its syncon number (ID), but treats the syncon as a simple container
//   (list) of lemmas, thus giving no importance to the selected concept but only to the words contained in it.
//______________________________________________________________________________________________________________________


// Rule 13
//	Write a SYNCON rule that finds "transportation" in the document technology2.txt
//# 21785: transportation, transport system, transportation system, transit, transp.
//# 154143: transportation, transp.









// Rule 14
//	Write a LIST rule that finds "transportation" in the document technology2.txt
//# 21785: transportation, transport system, transportation system, transit, transp.
//# 154143: transportation, transp.










// Rule 15
//	Write a LIST rule that finds "transportation" in the document whilst using a concept different from # 21785
//# 21785: transportation, transport system, transportation system, transit, transp.
//# 154143: transportation, transp.













//  External lists
//	 Use external lists to load lists of values from one or more external files
//______________________________________________________________________________________________________________________


// Rule 16
//	Write a LEMMA rule that finds "network","equipment","infrastructure","telecoms","telecommunications"
//  by using an external list and apply it to nettech1.txt
//# 100000418: telecommunications, cat. telecommunications;
//# 101301371: computer network, network, net;
//# 100577764: communications system, communication equipment, communication system, communications equipment











// Rule 17
//	Write an ANCESTOR rule that finds network and telecommunications concepts by using an external list and apply it to nettech1.txt
//# 100000418: telecommunications, cat. telecommunications;
//# 101301371: computer network, network, net;
//# 100577764: communications system, communication equipment, communication system, communications equipment













//  Combination of attributes
//+/-			These symbols are used to combine attributes
//					Use + for: 	limiting attributes to a condition of inclusion
//								(i.e. take ancestor ID#123 yet include only the ones that are of type noun)
//					Use - for:  limiting attributes to a condition of exclusion
//								(i.e. take ancestor ID#123 yet exclude lemmas that are listed)
//______________________________________________________________________________________________________________________


// Rule 18
//	Write an ANCESTOR rule that finds all organizations in nettech1.txt, applies only to proper nouns, removes the keyword "5G" and omitts geolocations with LIST navigating through 99 levels
//# 100043229: organization, association, organisation, Association, assn., assoc., assn, org., tag_association, tag_organization;
//# 100082794: area, region, geographic area, geographic region, geographical area, geographical region, country, section, geographic landscapes, Area, part, tag_area
//# TIP: Pipeline these items accordingly using +/- for combining your attributes //# ANCESTOR(100043229) //# TYPE(NPR) //# KEYWORD("5G") //# LIST(100082794:99)








							//-------------------------------------------------------------//
							//            	  MODULE B - Boolean operators          	   //
							//-------------------------------------------------------------//



//AND       The Boolean operator AND combines attributes considering the presence of tokens in a text. 
//			It expresses conjunction, therefore it matches the presence (within a text) of both
//          elements specified in the rule.
//______________________________________________________________________________________________________________________

// Rule 19
//	Write a SYNCON AND LEMMA rule that finds the "natural language" concept along with "understand","understanding" and "interpretation" LEMMAS in nlp2.txt
// Test this rule using different scopes and choose the most appropriate: SENTENCE, SENTENCE*#, PARAGRAPH, PARAGRAPH*#, CLAUSE, PHRASE(NP,VP,VP/PP), SECTION (BODY)
//# 100033742: natural language













//AND NOT   The Boolean operator AND NOT combines attributes considering the presence/absence of tokens in a text. 
//			It expresses disjunction, therefore it matches the presence (within a text) of one element
//          specified in the rule but not the other.
//______________________________________________________________________________________________________________________

// Rule 20
//	Write a SYNCON AND NOT LEMMA rule that finds the "natural language" concept only when it doesn't come along with "understand","understanding" and "interpretation" LEMMAS in nlp2.txt
// Test this rule using different scopes and choose the most appropriate: SENTENCE, SENTENCE*#, PARAGRAPH, PARAGRAPH*#, CLAUSE, PHRASE(NP,VP,VP/PP), SECTION (BODY)
//# 100033742: natural language














//OR        The Boolean operator OR combines attributes considering the presence of tokens in a text. 
//			The operator OR expresses an option, therefore it matches the presence (within a text) of either
//          or both elements specified in the rule.
//______________________________________________________________________________________________________________________

// Rule 21
//	Write an ANCESTOR OR KEYWORD rule that finds "telecommunications", "networks" and "computer" related concepts
//  or the "5G" KEYWORD in nettech.txt
//  Test this rule using different scopes and choose the most appropriate: SENTENCE, SENTENCE*#, PARAGRAPH,
//  PARAGRAPH*#, CLAUSE, PHRASE(NP,VP,VP/PP), SECTION (BODY)
//# 100000418: telecommunications, cat. telecommunications;
//# 21436: telecommunication, telecommunication equipment, telecommunication system, telecom equipment, telecom system, telecom;
//# 38862: network, web










						//--------------------------------------------------------------------------------//
						// 		MODULE C - Positional sequence operators; Negations in sequences		  //
						//--------------------------------------------------------------------------------//



//>> 		The Positional Operator >> (strict sequence) combines attributes considering the tokens’ reciprocal
//          positions in the text.
//			Distance between tokens: no token is allowed between the two elements specified in the rule,
//          with the exception of spaces.
//______________________________________________________________________________________________________________________

// Rule 22
// Write a TYPE AND SYNCON rule that finds any noun or adjective followed by the biotechnology
// concept right after in biotech1.txt
//# 100007108: biotechnology, biotech;
//# 100580689: biotechnology, biotech














//>         The Positional Operator > (loose sequence) combines attributes considering the tokens’
//          reciprocal positions in the text. Distance between tokens: only elements with low semantic value
//          are allowed (adjectives, adverbs, conjunctions, articles...)
//______________________________________________________________________________________________________________________

// Rule 23
//	Write a SYNCON rule that finds "computer science" close to "software engineering" concepts in compsci1.txt
// # 100021198: computer science, information systems engineering, compsci, CS;
//# 100080993: software engineering, SE












//<>        The Positional Operator <> (flexible sequence) combine attributes considering tokens’ reciprocal
//          positions in the text. Distance between tokens: any token is accepted between the two elements.
//          The boundaries for the operator are the beginning and the end of each sentence.
//______________________________________________________________________________________________________________________

// Rule 24
//	Write a LEMMA rule that finds "researcher","student","solution","program","agricultural","genetics" and "breeding" in a sequence with the ancestors of biotechnology in biotech1.txt
//# 100007108: biotechnology, biotech;
//# 100580689: biotechnology, biotech;
//# 100011016: technology, tech., technol.;
//# 3861: engineering, technology, e., tech., technol., eng.;
//# 100011023: engineering, applied science, engineering science, technology, e., tech, eng., technol.














//!         The exclamation point operator allows users to negate the position of a token within a sequence
//			You can use ! next to any of the basic attributes with any of the positiona sequence operators
//______________________________________________________________________________________________________________________

// Rule 25
//	Write an ANCESTOR rule finding the concepts of "biotechnology" if not preceded in a sequence by
//  LEMMAs like "researcher","student","solution","program","agricultural","genetics" and "breeding".
//  Use biotech1.txt
//# 100007108: biotechnology, biotech;
//# 100580689: biotechnology, biotech;
//# 100011016: technology, tech., technol.;
//# 3861: engineering, technology, e., tech., technol., eng.;
//# 100011023: engineering, applied science, engineering science, technology, e., tech, eng., technol.












// Rule 26
//	Write an ANCESTOR rule finding the concepts of "technology" if not preceded in a sequence by
//  LEMMAs like "adopt", "adoption", "awareness".
//  Use biotech1.txt
//# 100007108: biotechnology, biotech;
//# 100580689: biotechnology, biotech;
//# 100011016: technology, tech., technol.;
//# 3861: engineering, technology, e., tech., technol., eng.;
//# 100011023: engineering, applied science, engineering science, technology, e., tech, eng., technol.










							//-------------------------------------------------------------//
							//            	  MODULE D - NEXT operators      	    	   //
							//-------------------------------------------------------------//




//NEXT      NEXT is an operator that combines the Boolean operator AND with the flexible positional sequence operator (<>).
//			NEXT and NEXT NOT will work exactly like AND and AND NOT yet matching the the operands sequence order
//          (unlike the AND operator, with NEXT the OPERAND2 will always follow OPERAND1 outside of a single sentence).
//______________________________________________________________________________________________________________________

// Rule 27
//	Write KEYWORD NEXT LEMMA rule that finds "5G" in the NEXT sentence to "network","technology" lemmas in nettech.txt













// Rule 28
//	Write KEYWORD NEXT LEMMA rule that finds "5G" NEXT NOT to "network","technology" lemmas in nettech.txt
//  Test this rule using different scopes and choose the most appropriate: SENTENCE*#, PARAGRAPH,
//  PARAGRAPH*#, CLAUSE, PHRASE(NP,VP,VP/PP), SECTION (BODY)














							//--------------------------------------------------------------------//
							//        			MODULE E  -  Subrules                             //
							//                   			 IF DOMAIN SCOPE                      //
							//                   			 RELEVANT                             //
							//--------------------------------------------------------------------//



//SUB-RULE    A sub-rule is a linguistic condition that has been given a name and that can be used in other rules.
//			  It has to be defined before its name can be used in rules


// Rule 29
//	Write a subrule called TECHNOLOGY using a list of SYNCON, LEMMA and ANCESTOR of your choice
//  whilst being consistent with "thechnology".
//	Write an ANCESTOR rule to find all "expert" people (professional person) and "organization" concepts
//  AND your TECHNOLOGY sub-rule. Use biotech1.txt
//	Use SCOPE SECTION BODY and make an external list for SYNCONS
// ANCESTOR, SYNCON and LEMMA suggestions:
// ANCESTOR: 100011016,21312,3861,100011023,152549
// SYNCON: 93110,97121,93109,219519,96862,97742,221053,81936,96971,97667,97709,98588,172859,178126,179063,179433,179559,180630,182208,182211,182216,182217,182219,182336,182447,183050,183309,184318,186590,188307,209861
// LEMMA: cutting edge, advance










//IF DOMAIN		Applies the rule only if the selected standard domain has been associated to the text.
//______________________________________________________________________________________________________________________

// Rule 30
// Write a rule to find "language" KEYWORD only if "computer science", "linguistics" and "software" are
// among the domains in nlp1.txt










//RELEVANT    It identifies a token by verifying if it is a "relevant" element in the text
//            (i.e. contained in the Relevant Information panel)
//______________________________________________________________________________________________________________________

// Rule 31
// Write a rule to find all RELEVANT lemmas and syncons in biotech1.txt 










// Rule 32
// Edit your rule limiting RELEVANT lemmas and syncons to the ancestor of "life science",
// "method" (technique) and "scientific discipline" in biotech1.txt








