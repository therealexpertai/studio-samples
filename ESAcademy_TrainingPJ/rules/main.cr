//The main source file may contain rules, configurations or instructions to import other files containing rules.
//(Please see https://docs.expert.ai/studio/latest/languages/import/ for a complete explanation)

//In this case we will use the main.cr to import configurations and rules files.

//TIPS
//Create one category specific files to keep your project clean; the users will be free to choose
//any significative name for the file(s).
//Put your templates in a templates.cr file and create one extraction class specific files to
//keep your rules clean (just like text classification/categorization).



                                    //----------------------------------//
                                    //          Configurations          //
                                    //----------------------------------//


//The config.cr file is a good place to put options and configurations like SECTIONS, SEGMENTS and TEMPLATEs as well!
//Moving all of the templates and extraction classes configurations in the config.cr file is the recommended
//approach to keep your project clean.

IMPORT "config.cr"


                                    //---------------------------------------//
                                    //          Text Classification          //
                                    //---------------------------------------//


//CRules Introduction
//Start from the crules_introduction file to review how classification/categorization works, how C rules work and how they're structured.

IMPORT "crules_introduction.cr"

//Crules Training
//It gives you access to a set of ready to compile rules to apply on this project documents with
//clear guidelines, information and tips&tricks.

IMPORT "crules_training.cr"

//Crules Training Hands-on
//It gives you access to straight forward exercises to practice on classification tasks, attributes,
//operands and features addressed in the prevuois Crules Training.
//This is the perfect section to put into practice and to have fun with some freestyle coding.

IMPORT "crules_training_hands_on.cr"

//Post-processing Text Classification
//In the main.jr you can design special processing features to post-process and alter classification outcomes
//HEAD OVER TO THE MAIN.JR FILE to see some of these feature in action to filter categories based on their
//score allowing for keeping top three categories per document only.


                                    //-----------------------------------//
                                    //            Data Mining            //
                                    //-----------------------------------//


//Erules Introduction
//Start from the erules_introduction file to review how data mining works, how E rules work and how they're structured.

IMPORT "erules_introduction.cr"

//Erules Training
//It gives you access to a set of ready to compile rules to apply on this project documents with
//clear guidelines, information and tips&tricks.
//This is the perfect section to learn attributes and how they work

IMPORT "erules_training.cr"

//Erules Training Hands-on
//It gives you access to straight forward exercises to practice on extraction tasks, attributes,
//operands and features addressed in the prevuois Erules Training.
//This is the perfect section to put into practice and to have fun with some freestyle coding.

IMPORT "erules_training_hands_on.cr"


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

IMPORT "segments_training.cr"


                                    //----------------------------------//
                                    //     Advanced TOPIC: Tagging      //
                                    //----------------------------------//


//Tagging
//The process of tagging allows for patching disambiguation whilst resolving specific words and collocations to
//a specific type of concept
//i.e. suppose "Xavientech Limited" is being disambiguated as  "Xavientech" company and "Limited" as an djective,
//with taggin you can patch disambiguation and make "Xavientech Limited" a company name

//Tagging by rules is a two step process. In the first step, tags are to be declared in the config.cr file.
//Tags have almost the same structure of extraction templates but you need to provide the syncon number you
//want to patch right next to the respective fields, separated by colon.
//Step two is to write extraction like rules using the definition TAGGER in place of IDENTIFY
//(using a dedicated cr file is recommended).

IMPORT "tagger_rules.cr"
