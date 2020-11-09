

							//-----------------------------------------------------------//
							//                      SEGMENTS RULES                       //
							//-----------------------------------------------------------//

/*
	  Head over to the config.cr to view the SEGMENTS definitions already created for you
	  in the dedicated SEGMENTS{} section. SEGMENTS allow you to create dynamic chunking of documents
	  that can be leveraged in your categorization and extraction rules as a custom scope option.

SEGMENT BEGIN       Start a segment EMAIL_BODY from the word "body" that's beginning a sentence and immediately
                    followed by punctuation. The length of this segment will depend on where the ending of the segment
                    is defined.
SEGMENT END         Define the end of a segment EMAIL_BODY from when "thanks" is beginning a sentence and immediately
                    followed by punctuation.
*/

SCOPE SENTENCE*2
{
    // This rule opens the FOOTER segment when it finds the lemma "contact" followed punctuation and a person name or noun ending the sentence in the next one
    // PATTERN is a good alternative for this rule allowing for using regular expressions to identify ":" right after the "contact" lemma
    SEGMENT(FOOTER|BEGIN)
    {
        LEMMA("contact")
        <:3>
        TYPE(PNT)
        NEXT
        TYPE(NPH,NOU)+POSITION(END SENTENCE)
    }
}

SCOPE SENTENCE
{
    // This rule closes the FOOTER segment at the end of the document
    SEGMENT(FOOTER|END)
    {
        POSITION(END SECTION)
    }
}


/*
Reference:

LEMMA attribute:			https://docs.expert.ai/studio/latest/languages/attributes/lemma/
POSITION attribute:			https://docs.expert.ai/studio/latest/languages/attributes/position/
SEGMENTS                    https://docs.expert.ai/studio/latest/languages/segments/syntax/#begin-and-end
*/
