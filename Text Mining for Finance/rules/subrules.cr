

							//-----------------------------------------------------------//
							//                      	SUB-RULES                        //
							//-----------------------------------------------------------//

//TIP
//Sub-rules are particularly useful when a specific sub-expression is meant to be reused in more than one rule. In fact, not only they allow a user to define a condition only once and easily recall it with its predefined name;
//they also allow to modify the condition a number of times with no need for reproducing the same modification in several rules, as needed if a plain sub-expression is used. This cuts down the risk for mistakes and random omissions.

#quote# =		TYPE(PNT)
				>>
				TYPE(PNT)
				<:5>
				ANCESTOR(113581)+TYPE(VER:simple_past, VER:ed_form)
				//# 113581: v. of linguistic communication, v. of verbal communication, v. linguistic communication verb, v. verbal communication verb
				OR
				PATTERN("\"")
				>>
				POSITION(BEGIN SENTENCE)
				OR
				LEMMA("say","tell")+TYPE(VER:simple_past, VER:ed_form, VER:ing_form, VER:present_perfect)
				OR
				PATTERN("\"")
				<:7>
				!PATTERN("\"")
				<8:25>
				PATTERN("\"")
				;

#quote2# = 		PATTERN("\"")
				<:7>
				!PATTERN("\"")
				<8:45>
				PATTERN("\"");


#proceedings# =(	ANCESTOR(78155,115061,65690,4861,34364,149129)//# 78155: legal subject, judicial subject; 115061: v. of law, v. law verb
						OR
						LIST(76936:1)//# 76936: confine, detain, hold
						OR
						KEYWORD("wanted","charges")
					);


#accident#	=					ANCESTOR(12807)//# 12807: aircraft
								<-3:3>
								LEMMA("disappear")
								OR
								LIST(12822:99)//# 12822: Airlines, air company, airline, airline business, airline company, airway, tag_airline_company
								<:7>
								LIST(420:99,33607:99) //"clash" # 420: collision, crash, smash; 33607: accident
								OR
								ANCESTOR(33609,137049)
								;


/*
Reference:

TYPE attribute:			http://docs.expertsystem.com/languages/attributes/type/
PATTERN attribute:		http://docs.expertsystem.com/languages/attributes/pattern/
Boolean Operators:		http://docs.expertsystem.com/languages/operators/boolean/
Sequence Operators:		http://docs.expertsystem.com/languages/operators/positional-sequences/
ANCESTOR attribute:		http://docs.expertsystem.com/languages/attributes/ancestor/
LIST attribute:			http://docs.expertsystem.com/languages/attributes/list/
LEMMA attribute:		http://docs.expertsystem.com/languages/attributes/lemma/
NEGATION in seq:		https://docs.expert.ai/studio/latest/languages/operators/positional-sequences/negation/
Attributes combination:	http://docs.expertsystem.com/languages/attributes/combination/
*/
