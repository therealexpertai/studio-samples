


//  Configure your Segments
//______________________________________________________________________________________________________________________

/*
	  Head over to the config.cr to view the SEGMENTS definitions already created for you
	  in the dedicated SEGMENTS{} section. SEGMENTS allow you to create dynamic chunking of documents
	  that can be leveraged in your categorization and extraction rules as a custom scope option.
*/

//______________________________________________________________________________________________________________________


							//-----------------------------------------------------------//
							//                      SEGMENTS RULES                       //
							//-----------------------------------------------------------//


//  Segment 1 - EMAIL_SENDER
//______________________________________________________________________________________________________________________

/*
SEGMENT             Generate a segment EMAIL_SENDER if "to" starts a sentence and immediately followed by
                    punctuation. This definition will create a segment that is one sentence.
WIKI                https://docs.expert.ai/studio/latest/languages/segments/syntax/
EXAMPLE             email1.txt
*/

SCOPE SENTENCE
{
    SEGMENT(EMAIL_SENDER)
    {
        KEYWORD("to")+POSITION(BEGIN SENTENCE)
        >>
        TYPE(PNT)
    }
}

//  Segment 2 - EMAIL_RECEIVER
//______________________________________________________________________________________________________________________

/*
SEGMENT             Generate a segment EMAIL_RECEIVER if "from" starts a sentence and immediately followed by
                    punctuation. This definition will create a segment that is one sentence.
WIKI                https://docs.expert.ai/studio/latest/languages/segments/syntax/
EXAMPLE             email1.txt
*/

SCOPE SENTENCE
{
    SEGMENT(EMAIL_RECEIVER)
    {
        KEYWORD("from")+POSITION(BEGIN SENTENCE)
        >>
        TYPE(PNT)
    }
}

//  Segment 3 - EMAIL_OBJECT
//______________________________________________________________________________________________________________________

/*
SEGMENT             Generate a segment EMAIL_OBJECT if "object" starts a sentence and immediately followed by
                    punctuation. This definition will create a segment that is one sentence.
WIKI                https://docs.expert.ai/studio/latest/languages/segments/syntax/
EXAMPLE             email1.txt
*/

SCOPE SENTENCE
{
    SEGMENT(EMAIL_OBJECT)
    {
        LEMMA("object")+POSITION(BEGIN SENTENCE)
        >>
        TYPE(PNT)
    }
}


//  Segment 4 - EMAIL_BODY
//______________________________________________________________________________________________________________________

/*
SEGMENT BEGIN       Start a segment EMAIL_BODY from the word "body" that's beginning a sentence and immediately
                    followed by punctuation. The length of this segment will depend on where the ending of the segment
                    is defined.
SEGMENT END         Define the end of a segment EMAIL_BODY from when "thanks" is beginning a sentence and immediately
                    followed by punctuation.
WIKI                https://docs.expert.ai/studio/latest/languages/segments/syntax/#begin-and-end
EXAMPLE             email1.txt
*/

SCOPE SENTENCE
{
    SEGMENT(EMAIL_BODY|BEGIN)
    {
        LEMMA("body")+POSITION(BEGIN SENTENCE)
        >>
        TYPE(PNT)
    }
}

SCOPE SENTENCE
{
    SEGMENT(EMAIL_BODY|END)
    {
        ANCESTOR(122469,33302)+POSITION(BEGIN SENTENCE) //@SYN: #122469# [v. of thanks] //@SYN: #33302# [thanks]
        >>
        TYPE(PNT)
    }
}


//  Segment 4 - SIGNATURE
//______________________________________________________________________________________________________________________

/*
SEGMENT BEGIN_AFTER Start a segment SIGNATURE following a sentence where "thanks" is beginning a sentence and
                    immediately followed by punctuation. The length of this segment will depend on where the ending
                    of the segment is defined.
SEGMENT END         Define the end of a segment SIGNATURE at the end of the document text.
WIKI                https://docs.expert.ai/studio/latest/languages/segments/syntax/#before-and-after
EXAMPLE             email1.txt
*/

SCOPE SENTENCE
{
    SEGMENT(SIGNATURE|BEGIN_AFTER)
    {
        ANCESTOR(122469,33302)+POSITION(BEGIN SENTENCE)//@SYN: #122469# [v. of thanks] //@SYN: #33302# [thanks]
        >>
        TYPE(PNT)
    }
}

SCOPE SENTENCE
{
   SEGMENT(SIGNATURE|END)
    {
        POSITION (END SECTION)
    }
}

							//-----------------------------------------------------------//
							//            EXTRACTION RULES USING SEGMENTS                //
							//-----------------------------------------------------------//

//______________________________________________________________________________________________________________________

/*

                    Below is template EMAIL_DATA and relevant fields that will store extracted data records.
                    The extraction rules provided are using the segments that were created above as scope.
                    Leave all segment rules above uncommented when using the extraction rules below.

                    All rules apply to the EXAMPLE email1.txt file.

                    (please see https://docs.expert.ai/studio/latest/languages/scope/custom-options/#segment
                    for a complete explanation)

*/

//______________________________________________________________________________________________________________________


TEMPLATE(EMAIL_DATA)
{
    @Sender,
    @Receiver,
    @Object,
    @Data,
    @Sender_data
    MERGE WHEN SENTENCE
}


//SCOPE SENTENCE IN SEGMENT(EMAIL_SENDER)
//{
//    // This rule extracts any email
//    // By using segments you can simplify and reduce your rule to a simple email extraction
//    // Collect it as Sender type of data since it's in a sender specific segment of text
//    IDENTIFY(EMAIL_DATA)
//    {
//        @Sender[ANCESTOR(101273217)]//@SYN: #101273217# [email address]
//    }
//}

//SCOPE SENTENCE IN SEGMENT(EMAIL_RECEIVER)
//{
//    // This rule extracts any email
//    // By using segments you can simplify and reduce your rule to a simple email extraction
//    // Collect it as Receiver type of data since it's in a receiver specific segment of text
//    IDENTIFY(EMAIL_DATA)
//    {
//        @Receiver[ANCESTOR(101273217)]//@SYN: #101273217# [email address]
//    }
//}

//SCOPE SENTENCE IN SEGMENT(EMAIL_OBJECT)
//{
//    // This rule finds key data to address issues found in the email object
//    IDENTIFY(EMAIL_DATA)
//    {
//        @Object[LEMMA("problem")]|[BASE#2]
//        <:2>
//        @Object[LEMMA("access","connection","network")]|[BASE#1]
//    }
//
//    // This rule finds key data to identify cloud technologies mentioned in the email object
//    IDENTIFY(EMAIL_DATA)
//    {
//        @Data[LIST(201135)]|[SEQUENCE]//@SYN: #201135# [Cloud]
//        >>
//        TYPE(NOU)
//    }
//}

//SCOPE SENTENCE IN SEGMENT(EMAIL_BODY)
//{
//    // This rule finds key data to identify cloud technologies mentioned in the email body
//    IDENTIFY(EMAIL_DATA)
//    {
//        @Data[LIST(201135)]|[SEQUENCE]//@SYN: #201135# [Cloud]
//        >>
//        TYPE(NOU)
//    }
//
//    // This rule finds emails in the email body
//    // This is an example of how you can use segments to extract same types of information with no loss of consistency
//    IDENTIFY(EMAIL_DATA)
//    {
//        @Data[ANCESTOR(101273217)+SYNCON(UNKNOWN)]//@SYN: #101273217# [email address]
//    }
//
//    // This rule finds phone numbers in the email body
//    IDENTIFY(EMAIL_DATA)
//    {
//        @Data[ANCESTOR(100214995)+SYNCON(UNKNOWN)]//@SYN: #100214995# [telephone number]
//    }
//}

//SCOPE SENTENCE IN SEGMENT(SIGNATURE)
//{
//    // This rule finds people names in the signature
//    IDENTIFY(EMAIL_DATA)
//    {
//        @Sender_data[TYPE(NPH)]
//    }
//
//    // This rule finds companies names in the signature
//   IDENTIFY(EMAIL_DATA)
//    {
//        @Sender_data[ANCESTOR(104830453)+TYPE(NPR)]//@SYN: #104830453# [company]
//    }
//
//   // This rule finds job roles in the signature
//   IDENTIFY(EMAIL_DATA)
//    {
//        @Sender_data[ANCESTOR(42821,100327055)+TYPE(NOU)]//@SYN: #42821# [creator] //@SYN: #100327055# [working person]
//    }
//}

