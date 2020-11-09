                                    //--------------------------------------------------------------------//
                                    //                    Extraction of personal data   	              //
                                    //                		   Contact Information		  	              //
                                    //            ::Reference links at the bottom of the page::           //
                                    //--------------------------------------------------------------------//



// This scope option with SEGMENT allows for applying the rules below only within the dynamic segment FOOTER
SCOPE SENTENCE IN SEGMENT (FOOTER)
{
    //This rule extracts people names only from the FOOTER part of the document
    IDENTIFY(Contact_Info)
    {
        @FullName[TYPE(NPH)]
    }

    //This rule extracts phone numbers only from the FOOTER part of the document
    //TIP: not only you can rely on specific knowledge graph concepts to collect entities like organizations, you can do the same for phone numbers, emails, addresses and more
    IDENTIFY(Contact_Info)
    {
        @Phone[ANCESTOR(100214995) + SYNCON(UNKNOWN)]//@SYN: #100214995# [telephone number]
    }

    //This rule extracts emails only from the FOOTER part of the document
    IDENTIFY(Contact_Info)
    {
        @Email[ANCESTOR(101273217) + SYNCON(UNKNOWN)]//@SYN: #101273217# [email address]
    }

    //This rule extracts organizations only from the FOOTER part of the document
    IDENTIFY(Contact_Info)
    {
        @Organization[ANCESTOR(100043229) + TYPE(NPR) - LIST(78660:99)]//@SYN: #100043229# [organization] //@SYN: #78660# [geographic place]
    }
}


/*
Reference:

TYPE attribute:			http://docs.expertsystem.com/languages/attributes/type/
ANCESTOR attribute:		http://docs.expertsystem.com/languages/attributes/ancestor/
LIST attribute:			http://docs.expertsystem.com/languages/attributes/list/
Attributes combination:	http://docs.expertsystem.com/languages/attributes/combination/
UNKNOWN attribute:		http://docs.expertsystem.com/languages/attributes/syncon/#with-unknown
*/
