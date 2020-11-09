


//  Configure your TAGS
//______________________________________________________________________________________________________________________

/*
	  Head over to the config.cr to view the TAGS definitions already created for you
	  in the dedicated TAGS{} section. Tagging allows you to manipulate the disambiguation output to
	  enrich tokens with additional information that can be referenced in segmentation, categorization and
	  extraction rules.

	  (please see https://docs.expert.ai/studio/latest/languages/tagging/#tagging-by-rules for a complete explanation)
*/

//______________________________________________________________________________________________________________________


							//-----------------------------------------------------------//
							//                       TAGGER RULES                        //
							//-----------------------------------------------------------//



/*
         This rule finds the occurrence of "BA" in the text right after the concept of "Boeing" [the company]
         Tagger follows this instruction and changes disambiguation of "BA" to an ENT token resolving to "Boeing"
         Test this rule with technology4.txt document
*/

SCOPE SENTENCE
{
    TAGGER()
    {

        SYNCON(100000066)//@SYN: #100000066# [Boeing Company]
        <:2>
        @BOEING[KEYWORD("BA")]
    }
}

/*
         This rule finds the occurrence of "NOC" in the text right after the concept of "Northrop Grumman" [the company]
         Tagger follows this instruction and changes disambiguation of "NOC" to an ENT token resolving to "Northrop Grumman"
         Test this rule with technology4.txt document
*/

SCOPE SENTENCE
{
    TAGGER()
    {
        SYNCON(100329953)//@SYN: #100329953# [Northrop Grumman]
        <:2>
        @NOC[KEYWORD("NOC")]
    }
}

/*
         This rule finds the occurrence of "NOC" in the text right after the concept of "Northrop Grumman" [the company]
         Tagger follows this instruction and changes disambiguation of "NOC" to an ENT token resolving to "Northrop Grumman"
         Test this rule with technology4.txt document
*/

SCOPE SENTENCE
{
    TAGGER()
    {
        @SPACE_VEHICLE[KEYWORD("SpaceX Dragon capsule","Falcon 9 rocket","SpaceX Falcon rocket","Dragon spacecraft","Crew Dragon")]
    }
}