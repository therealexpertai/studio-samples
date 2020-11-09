                                    //--------------------------------------------------------------------//
                                    //                          Tagging rules             	              //
                                    //                	  Manipulating disambiguation	  	              //
                                    //            ::Reference links at the bottom of the page::           //
                                    //--------------------------------------------------------------------//



SCOPE SENTENCE
{
    //When this rule finds a company followed by a punctuation, an acronym and another punctuation, modify disambiguation and make the acronym a company too
    TAGGER()
    {
        ANCESTOR(104830453)//@SYN: #104830453# [company]
        >>
        TYPE(PNT)
        >>
        @COMPANY[KEYWORD("NBL")]
        >>
        TYPE(PNT)
    }

    //Make every occurrence of the KW National Oilwell Varco a company
    TAGGER()
    {
        @COMPANY[KEYWORD("National Oilwell Varco")]
    }
}


/*
Reference:

TYPE attribute:			http://docs.expertsystem.com/languages/attributes/type/
ANCESTOR attribute:		http://docs.expertsystem.com/languages/attributes/ancestor/
KEYWORD attribute:		http://docs.expertsystem.com/languages/attributes/keyword/
Sequence Operators:		http://docs.expertsystem.com/languages/operators/positional-sequences/
*/
