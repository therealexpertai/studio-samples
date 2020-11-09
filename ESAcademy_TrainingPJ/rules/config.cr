

							//------------------------------------------------//
							//                  CONFIGURATION                 //
							//------------------------------------------------//


//SECTIONS DEFINITION
//WIKI https://docs.expert.ai/studio/latest/languages/sections/
//______________________________________________________________________________________________________________________

SECTIONS
{
    @BODY(STANDARD,1 SCORE),
    @TITLE(1 SCORE)
}



//SEGMENTS DEFINITION
//WIKI https://docs.expert.ai/studio/latest/languages/segments/
//______________________________________________________________________________________________________________________

SEGMENTS
{
    @EMAIL_SENDER(1.0),     //Declare the name of the segments -> the user is free to choose any significative name.
    @EMAIL_RECEIVER(1.0),   //The number signifies how much the score of rule hits within the segment is boosted
    @EMAIL_OBJECT(1.0),
    @EMAIL_BODY(1.0),
    @EMAIL_SIGNATURE(1.0),
    @SIGNATURE(1.0)
}



//TEMPLATES DEFINITION
//WIKI https://docs.expert.ai/studio/latest/languages/extraction/structures/
//______________________________________________________________________________________________________________________

TEMPLATE(TECHNOLOGIES)	    //Declare the name of the template -> the user is free to choose any significative name.
{
    @Technology,			//Declare the template fields -> the user is free to choose any significative name;
    @Software,              //each will be valorized with the data extracted from a text by means of the
    @Device,                //extraction rules defined in their respective rule files.
    @Vehicle,
    @Infrastructures,
    @NLP
}

TEMPLATE(KEY_ENTITIES)
{
    @Institutions,
    @Organizations,
    @Places,
    @Dates,
    @Companies,
    @People
}

TEMPLATE(RELATIONSHIPS)
{
	@Subject,
	@Object,
	@Action
}



//TAGS DEFINITION
//WIKI https://docs.expert.ai/studio/latest/languages/tagging/#tagging-by-rules
//______________________________________________________________________________________________________________________

TAGS
{
    @BOEING:100000066,          //Declare the names of the tags -> the user is free to choose any significative name
    @NOC:100329953,             //A syncon ID can be specified to replace the original syncon ID of a token
    @SPACE_VEHICLE:117105975
}