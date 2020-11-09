
                                    //----------------------------------//
                                    //          Configurations          //
                                    //----------------------------------//


//The config.cr file is a good place to put options and configurations like SECTIONS, SEGMENTS and TEMPLATEs as well!
//Moving all of the templates and extraction classes configurations in the config.cr file is the recommended
//approach to keep your project clean.

IMPORT "config.cr"


                                    //---------------------------------------//
                                    //            Extraction Rules           //
                                    //---------------------------------------//


//Subrules
//The "subrules.cr" file was specifically created to store all strategic sub-rules to use the project extraction rules.
//A sub-rule is a linguistic condition which has been defined and given a name with the purpose of easily referencing the condition in any project rule.

IMPORT "subrules.cr"


//Word cloud rules
//The "word cloud.cr" file was specifically created to enclose all extraction rules responsible for extracting key elements from text (i.e. relevant lemmas and relevant concepts).
//This class relies on a native expert.ai feature that's capable of understanding and gathering all main elements of a document extracting them.
//All relevant items are aggregated within the same extracting making it easy to re-work it as a tag/word cloud

IMPORT "word cloud.cr"


//Text Mining for Finance - Key Financial Data
//The "finance rules.cr" file was specifically created to enclose all extraction rules responsible for mining key financial data from this data set.
/*
Revenue:              reported revenues (expressed in percentage and/or currencies)
Revenue_Increase:     reported increase in revenues (percentage and/or currencies)
Revenue_Increase:     reported decrese in revenues (percentage and/or currencies)
Net_Income:           reported net income expressed in currencies
Net_Loss:             reported net loss expressed in currencies
Stock_Exchange:       provides all stock exchange mentions
Company:              provides all companies mentioned along with the respective stock exchange or investment assessment if present
Investment:           provides evidence of the investment assessment (bad/good investment)
*/

IMPORT "finance rules.cr"


//Text Mining for Finance - Buyer and Seller extraction
//The "acquisition rules.cr" file was specifically created to enclose all extraction rules responsible for mining acquisition events from this data set.
/*
Buyer:                provides the name of the buyer (person, organization) - relies on Named Entity Recognition capabilities of expert.ai
Seller:               provides the name of the seller (organization) - relies on Named Entity Recognition capabilities of expert.ai
Form:                 provides a string "Finance" clusterizing the tipe of event
Action:               provides the base for of the verb/noun triggering the event
Acquisition_Money:    provides the actual amount paid by the buyer for the acquisition
Sentence:             provides the whole sentence generating the results above
*/

IMPORT "acquisition rules.cr"


//Text Mining for Finance - Buyer and Seller extraction
//The "acquisition rules.cr" file was specifically created to enclose all extraction rules responsible for mining acquisition events from this data set.
/*
Form:                 provides a string "Communication" clusterizing the tipe of event
Action:               provides the base for of the verb/noun triggering the event
Sentence:             provides the whole sentence generating the results above
Source:               provides the name of the source of the communication (person, organization)
Target:               provides the name of the target of the communication (organization)
Quote:                provides the actual quotes of the communication event
*/

IMPORT "communications rules.cr"


//Contact Information - Personal data extraction
//The "contact info.cr" file was specifically created to enclose all extraction rules responsible for mining personal data from this data set.
/*
Form:                 provides a string "Communication" clusterizing the tipe of event
Action:               provides the base for of the verb/noun triggering the event
Sentence:             provides the whole sentence generating the results above
Source:               provides the name of the source of the communication (person, organization)
Target:               provides the name of the target of the communication (organization)
Quote:                provides the actual quotes of the communication event
*/

IMPORT "contact info.cr"


                                    //---------------------------------------//
                                    //              Tagger Rules             //
                                    //---------------------------------------//


//Tagger rules
//The "tagging rules.cr" file was specifically created to store all tagger rules developed to manipulate disambiguation supporting the disambiguator in recognizing company entities.
//Tagging means manipulating the disambiguation output to enrich tokens with additional information ("tags") that can be referenced in segmentation, categorization and extraction rules.
//It takes place after disambiguation and before the evaluation of categorization and extraction rules.

IMPORT "tagger rules.cr"


                                    //----------------------------------//
                                    //     Advanced TOPIC: Segments     //
                                    //----------------------------------//


//Segments
//Documents segmentation is one of the two techniques a developer can employ to create custom textual subdivisions
//in an input document (the other being sectioning). This technique is particularly useful when the original text
//layout or structure turns out to be fundamental for the correct identification and/or retrieval of information.
//Segments are dynamic text blocks identified during input texts processing by means of ad hoc linguistic rules.
//The fundamental aim of segmentation rules is to define boundaries to use as dynamic scopes for your rules whilst
//increasing rules precision and accuracy by selecting the proper portion of text in which the rules should find data.
//Segments allow for simplifying your C and E rules as well making rules cleaner and more elegant.

IMPORT "segments.cr"
