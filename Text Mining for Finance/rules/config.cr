

                                    //---------------------------------------//
                                    //                Sections               //
                                    //---------------------------------------//

//Documents sectioning can be used to create custom textual subdivisions in an input document.
//This technique is particularly useful when the original text layout or structure turns out to be fundamental for the correct identification and/or retrieval of information.
//Here you can specify your custom SECTION. If you don't, all plain text will be treated as a one whole BODY section.

SECTIONS
{
	@BODY(STANDARD,1SCORE)
}


                                    //---------------------------------------//
                                    //                Segments               //
                                    //---------------------------------------//

//Documents segmentation can be used to create custom text subdivisions within an input document.
//This technique is particularly useful when the original text layout or structure turns out to be fundamental for the correct identification and/or retrieval of information.
//Segments can be created in a text as dynamic text blocks identified by ad hoc linguistic rules during input text processing.

//Segments:		http://docs.expertsystem.com/languages/segments/

SEGMENTS
{
	@FOOTER(1.0)
}


                                    //------------------------------//
                                    //           TEMPLATES          //
                                    //------------------------------//

//All TEMPLATEs listed here are extraction objects built specifically for this project to extract financial data from news and press release.
//Every template has its own set of fields and classes as if you were to extract and place collected data in different consistent "containers".
//MERGE options determine the process of merging simple extraction into compound records based on a give scope or text extension.

//Templates & fields:		http://docs.expertsystem.com/languages/extraction/structures/


TEMPLATE(Finance_Acquisitions)
{
	@Form,
	@Action,
	@Sentence,
	@Buyer,
	@Seller,
	@Acquisition_Money
}

TEMPLATE(Finance_Communications)
{
	@Form,
	@Action,
	@Sentence,
	@Source,
	@Target,
	@Quote,
	@Role
}

TEMPLATE(Finance_Extractions)
{
	@Revenue_Increase,
	@Revenue_Decrease,
	@Revenue,
	@Net_Loss,
	@Net_Income,
	@Stock_Exchange,
	@Company,
	@Investment

	MERGE WHEN SENTENCE
}

TEMPLATE(Wordcloud)
{
	@Wordcloud

	MERGE WHEN DOCUMENT
}


TEMPLATE(Contact_Info)
{
	@FullName,
	@Phone,
	@Email,
	@Organization

	MERGE WHEN SEGMENT(FOOTER)
}

                                    //---------------------------------------//
                                    //             Transformations           //
                                    //---------------------------------------//
//TRANSFORM TOKEN allows for using data transformation and normalization to assign a value to several template fields by applying different transformation methods (options) to an extracted token.

//i.e. this configuration below allows for creating 3 fields with different outputs. Everytime an Economics operand triggers a verb in the text,
//it generates a Form field with a "Fiance" constant string, a Sentence fields with the whole sentence string, and the base form of the verb in the Action field.

//Transform Token:		http://docs.expertsystem.com/languages/extraction/values-transformation/token/

DEFINE Economics = TRANSFORM(TOKEN) IN TEMPLATE(Finance_Acquisitions)
{
	"Finance" IN Form
	TRANSFORMATION(SENTENCE) IN Sentence
	TRANSFORMATION(BASE) IN Action
}

DEFINE Communication = TRANSFORM(TOKEN) IN TEMPLATE(Finance_Communications)
{
	"Communication" IN Form
	TRANSFORMATION(SENTENCE) IN Sentence
	TRANSFORMATION(BASE) IN Action
}

DEFINE Money = TRANSFORM(TOKEN) IN TEMPLATE(Finance_Acquisitions)
{
	TRANSFORMATION(SENTENCE) IN Sentence
	TRANSFORMATION(SMARTENTRY) IN Acquisition_Money
}


                                    //---------------------------------------//
                                    //           Tagger-TAGS Config          //
                                    //---------------------------------------//

//All TAGS listed here are configuration objects built specifically for the tagger option to create rules necessary to manipulate disambiguation.
//The number next to the field, is needed to specify the syncon ID replacing the origibnal token ID by changing disambgiuation.

//Tagging:		http://docs.expertsystem.com/languages/tagging/

TAGS
{
    @COMPANY:37475
}
