


							//----------------------------------------------------//
							//        MODULE A - Basic ATTRIBUTES                 //
							//----------------------------------------------------//



//  Configure your Extraction classes
//______________________________________________________________________________________________________________________


//Head over to the config.cr for configuring TEMPLATEs and FIELDs for your Extraction classes


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















//ANCESTOR  	It identifies a token by specifying its syncon number (ID) and considering this last as a chain’s starting node.
//				Any token disambiguated as a syncon and belonging to this chain will be identified.
//______________________________________________________________________________________________________________________


// Rule 8
//	Write an ANCESTOR rule that finds all mentions of universities in the document nlp2.txt
//# 100003918: university















//  Rule 9 - LIST
//				The LIST attribute identifies a token by specifying its syncon number (ID), but treats the syncon as
//              a simple container (list) of lemmas, thus giving no importance to the selected concept but only to
//              the words contained in it.
//______________________________________________________________________________________________________________________


//	Write a rule using LIST to find all mentions of "artificial intelligence" and its synonyms regardless of
//  its specific meaning/concept recognition
//# 100011660: artificial intelligence















//  Rule 10 - External lists
//______________________________________________________________________________________________________________________


//	Create a list of LEMMAs to load in a rule to find lemmas like "robot","bot","nanobot","humanoid robot",
//  "android","droid","humanoid","mechanical man" in technology1.txt















//	Create a list of SYNCONs to load in a rule to find concepts like 100011012, 217807, 100587024,
//  100181787, 100787116 in technology1.txt















//	Create a list of ANCESTORs to load in a rule to find the same concepts belonmging to the list above
//  whilst using ANCESTORs like 100011019, 100191865. Use the document technology1.txt.















//  Rule 11 - PATTERN and TYPE
//				PATTERN allows for employing regular expressions in your rules while  TYPE allows for relying on PoS tagging
//				(noun=NOU, adjective=ADJ,  verb=VER, proper noun=NPR NPH=human proper noun, DAT=date,
//              MON=monetary value, ADR=address, etc)
//______________________________________________________________________________________________________________________


//	Write a rule using PATTERN to find all dates made of years only (4 cyphers) in technology4.txt.















//	Write a rule using TYPE to find all dates in the technology4.txt document.















////  Rule 12 - Combination attributes
//+/-			These symbols are used to combine attributes
//				Use + for: limiting attributes to a condition of inclusion (i.e. take ancestor ID#123 yet include only the ones)
//				Use - for: limiting attributes to a condition of exclusion (i.e. take ancestor ID#123 excluding ID#567,890)
//______________________________________________________________________________________________________________________


// Write a rule using ANCESTOR to extract companies names whilst limiting them to proper nouns only and
// excluding corporations in technology4.txt.
















//	Write a rule using TYPE to find all dates whilst excluding year only dates (4 cyphers) in technology4.txt.
















                            //-------------------------------------------------------------//
                            //            MODULE B - Boolean and NEXT operators;           //
                            //						 Logical operators                     //
                            //-------------------------------------------------------------//



//  Rule 13 - LEMMA AND LEMMA
//              The Boolean operator AND combines attributes considering the presence of tokens in a text.
//				It expresses conjunction, therefore it matches the presence (within a text) of both
//              elements specified in the rule.
//______________________________________________________________________________________________________________________


// Write a rule employing the AND operator extracting "robot, "machine" and "bot" occurring in the
// same sentence with cocnepts 100011012, 217807, 100587024, 100181787, 100787116. USe document technology1.txt.
















// Copy and paste the previous rule changing its scope to SENTENCE*#, SECTION(BODY), DOCUMENT,
// CLAUSE, and PARAGRAPH. USe document technology1.txt.
















//  Rule 14 - LEMMA AND NOT LEMMA
//              The Boolean operator AND NOT combines attributes considering the presence/absence of tokens in a text.
//				It expresses disjunction, therefore it matches the presence (within a text) of one element specified
//              in the rule but not the other.
//______________________________________________________________________________________________________________________


// Write a rule employing the AND NOT operator extracting "robot, "machine" and "bot" not occurring in the same
// sentence with cocnepts 100011012, 217807, 100587024, 100181787, 100787116. USe document technology1.txt.
















// Copy and paste the previous rule changing its scope to SENTENCE*#, SECTION(BODY), DOCUMENT, CLAUSE, and
// PARAGRAPH. USe document technology1.txt.
















//  Rule 15 - ANCESTOR OR KEYWORD
//        The Boolean operator OR combines attributes considering the presence of tokens in a text.
//			The operator OR expresses an option, therefore it matches the presence (within a text) of either or
//          both elements specified in the rule.
//______________________________________________________________________________________________________________________


//Write a rule that finds devices by using ANCESTORs like 100011012,100787116 or the LEMMA "machine" in technology4.txt.
















//  Rule 16 - NEXT and NEXT NOT
//        	    NEXT is an operator that combines the Boolean operator AND with the flexible positional sequence operator (<>).
//				NEXT and NEXT NOT will work exactly like AND and AND NOT yet matching the the operands sequence order
//              (unlike the AND operator, with NEXT the OPERAND2 will always follow OPERAND1 in any position of the sentence).
//______________________________________________________________________________________________________________________


// Write a rule to find vehicles using the ANCESTOR of 100040218 NEXT to the occurrence of SYNCON 100041291 or
// the LEMMA "SpaceX" in technology4.txt.
















						//--------------------------------------------------------------------------------//
						// 		MODULE C - Positional sequence operators; Negations in sequences		  //
						//--------------------------------------------------------------------------------//



//  Rule 17 - LEMMA >> LEMMA
// 			        The Positional Operator >> (strict sequence) combines attributes considering
//                  the tokens’ reciprocal positions in the text.
//				    Distance between tokens: no token is allowed between the two elements specified
//                  in the rule, with the exception of spaces.
//______________________________________________________________________________________________________________________


// Write a rule that finds "5G" and extracts it as an infrastructure when it's immediately followed by
// LEMMAs like "network", "infrastructure" and "equipment" in nettech.txt
















//  Rule 18 - ANCESTOR > LEMMA
//     	            The Positional Operator > (loose sequence) combines attributes considering the tokens’
//                  reciprocal positions in the text.
//				    Distance between tokens: only elements with low semantic value are allowed
//                  (adjectives, adverbs, conjunctions, articles...)
//______________________________________________________________________________________________________________________


// Write a rule that finds people names followed by their job role. Use the loose operator to make sure
// no semantically relevant token breaks the connection between the two operands. Use the technology3.txt document.
















//  Rule 19 - ANCESTOR <> ANCESTOR
//     	            The Positional Operator <> (flexible sequence) combine attributes considering tokens’
//                  reciprocal positions in the text.
//				    Distance between tokens: any token is accepted between the two elements. The boundaries
//                  for the operator are the beginning and the end of each sentence.
//______________________________________________________________________________________________________________________


// Write a rule to extract space and aircraft vehicles (ANCESTOR) only if preceded by countries and
// nationality adjectives within the sentence. Use the technology4.txt document.
















// Modify the previous rule and limit the positional sequence operator to up to 4 tokens of distance
// between the two operands. Use the technology4.txt document.
// What's the difference with the previous rule?















// Modify the previous rule and limit the positional sequence operator to at least 5 tokens of distance
// between the two operands. Use the technology4.txt document.
// What's the difference with the previous rule?
















// Modify the previous rule and limit the positional sequence operator to at least 2 tokens and
// up to 8 tokens of distance between the two operands. Use the technology4.txt document.
// What's the difference with the previous rule?

















//  Rule 20 - !SYNCON >> LEMMA
//                  This allows users to negate the position of a token within a sequence
//				    You can use ! next to any of the basic attributes with any of the positiona sequence operators
//______________________________________________________________________________________________________________________


// Write a rule to extract space and aircraft vehicles (ANCESTOR) only when not preceded by countries
// and nationality adjectives at any token distance within the same sentence. Use the technology4.txt document.
















						//------------------------------------------------//
						// 		MODULE D - values TRANSFORMATION		  //
						//------------------------------------------------//



//  Rule 21 - Extracted values TRANSFORMATION
//|[]         			Syntax used to add a TRANSFORMATION command to the rule. Transformation is
//                      an optional part in the association of token and fields, it controls what is
//                      transferred into the field.
//TEXT        			TEXT is the extraction transformation option that allows you to keep what is
//                      matched by the attribute into its original form.
//BASE					BASE is the extraction transformation option that transforms what is matched
//                      by the attribute into its base form.
//______________________________________________________________________________________________________________________


// Write a rule to find satellite and weather satellite concepts normalizing extractions to TEXT. Use document technology4.txt

















// Write a rule to find satellite and weather satellite concepts normalizing extractions to BASE. Use document technology4.txt
// What's the difference with the previous rule?

















// Write a rule to find companies names and extract them normalizing with SMARTENTRY. Use document technology4.txt

















//  Rule 22 - Restrict extraction using positional operators but extract values for just one field
//SEQUENCE	        Transformation option that returns all the elements included in a rule's sequence
//                  along with the value matched by an attribute enclosed in the extraction syntax.
//|[]               Syntax used to add a transformation or composition command in the rule. Composition is
//                  an optional part in the association of tokens and fields; it assembles the information
//                  in the text to return complete and non redundant extraction data by combining several
//                  elements of a positional or logical sequence.
//______________________________________________________________________________________________________________________


// Write a rule extracting the concept of "natural language" when found close (up to 5 tokens) to the LEMMAs
// "understanding" and "understand". Use SEQUENCE normalization to merge the rule extent to a whole extraction string.
// Use the technology4.txt document.

















// Modify the previous rule employing composition in place of SEQUENCE. Use the technology4.txt document.


















// What's the difference with the previous rule?
















						//------------------------------------------------------------------------------//
						// 		MODULE E - record AGGREGATION techniques : By-rule aggregation;         //
						//				   MERGE rules; CARDINAL;									    //
						//				   operators: Logical operators								    //
						//				   atributes: SYNCON UNKNOWN 							  	    //
						//------------------------------------------------------------------------------//


                                                //BY-RULE AGGREGATION//


//  Rule 23 - Relationship mining  - By-rule aggregation as an example to extract relationships from text
//			        The Logical Operator &VO and &SV link verbs with its direct object or subject.
//                  Scope: Logical operators always act within a sentence.
//______________________________________________________________________________________________________________________


// Write a rule using &SV finding and extracting all companies having a subject role with a
// specific verb in the same sentence. Use the technology6.txt document.

















// Write a rule using &OV finding and extracting all companies having an object role with a
// specific verb in the same sentence. Use the technology6.txt document.

















// Write a rule combining both &OV and &SV finding and extracting Subject-Action-Object
// relationships among companies. Use the technology6.txt document.

















//  Rule 24 - Merge Options and Cardinal: a different way to aggregate data extractions
//	                It identifies tokens which are not contained in (unknown to) the Sensigrafo
//                  It identifies a token by specifying its position(beginning or end) within the whole document,
//                  a paragraph or a sentence
//                  MERGE aggregation rule: Aggregates extracted data into a given template based on a specific
//                  portion of text, which is identified in the rule itself
//______________________________________________________________________________________________________________________
//

















// Write a set of rules extracting:
//			- Author: names of the people who wrote the article
//			- Role: the role of the authors when written close to their name
//			- Companies: companies proper nouns (use SYNCON UNKNOW to discriminate between guessed and
//            sensigrafo entities in two separate rules)
//			- Date and Time: full dates close to time or publishing
// Merge extractions when they are in the same sentence - try different scopes too!
// Use the biotech1.txt document.

















// Write a set of rules extracting:
//			- Author: names of the people who wrote the article
//			- Role: the role of the authors when written close to their name
//			- Companies: companies proper nouns (use SYNCON UNKNOW to discriminate between guessed and
//            sensigrafo entities in two separate rules)
//			- Date and Time: full dates close to time or publishing
// Use the cardinal option with the "Author" field to merge all other extractions around it - try different scopes too!
// Use the biotech1.txt document.

















