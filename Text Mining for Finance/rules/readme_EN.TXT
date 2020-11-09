TEXT MINING FOR FINANCE_ README FILE

---------------------
INTRODUCTION		 |
---------------------

This project is a text mining model prototype of medium complexity that's meant for processing finance centered press releases and collect buyer-seller relationships, acquisition money, revenues incomes, net loss, net incomes, the press release publisher personal info and much more. For this prototype, we chose the Symbolic approach and expert.ai Studio to benefict from major accuracy and tweakability - the model has an additional javascript post-processing stage to improve the overall accuracy of the relationships.

Documents chosen for this project are short to allow for better exploration of the extraction results. You are free to analyze longer documents and further develop the model to broaden its capabilities. This module is only a starting point, you can customize it by adding your own taxonomies and/or expanding existing extractions.

---------------------
EXPLORATION			 |
---------------------

The main source file may contain rules, configurations or instructions to import other files containing rules.
(Please see https:docs.expertsystem.com/languages/import/ for a complete explanation)

In this case we will use the main.cr to import configurations and rules files.

TIPS
Create specific files for each data mining extraction type to keep your project clean, then put the templates in the config.cr file. The users will be free to choose any significative name for the file(s).

Reference:
Keyboard shortcuts:     https://docs.expert.ai/studio/latest/studio/ui-reference/keyboard-shortcuts/
Interface overview:     https://docs.expert.ai/studio/latest/studio/ui-reference/overview/
Project structure:      https://docs.expert.ai/studio/latest/studio/project-structure/
Project panel:          https://docs.expert.ai/studio/latest/studio/ui-reference/tool-windows/project/

FIRST STEPS:

1- Creating a rules file
        Right click on the rules folder in the Project Panel (here on the left in the sources) and click on New>Studio Rules File
        Once you named and created your first file, it is automatically added and imported from your main.cr file. You can now create your first rules set.

        Basic operation:    https://docs.expert.ai/studio/latest/studio/how-to/files-and-folders/basics/

2- Creating an extraction rule
        To create your first extraction rules, open the "config.cr" file and configure your extraction in this form:

        TEMPLATE(YOUR_EXTRACTION_NAME)
        {
            @FIELD   //MB: metterei direttamente FIELD per non creare confusione
        }

        Now, head over to your previously created rules file and structure rules this way:

        SCOPE SENTENCE
        {
            IDENTIFY(YOUR_ EXTRACTION _NAME)
            {
                @FIELD[linguistic condition]
            }
        }

        This is an example of a template and a relative rule:

        TEMPLATE(VEHICLES)          *place the TEMPLATE configuration in your config.cr file
        {
            @CAR
        }

        SCOPE SENTENCE              *place your rules in dedicated rules files
        {
            IDENTIFY(VEHICLES)
            {
                @CAR[LEMMA("sedan","SUV")]
            }
        }

        SCOPE SENTENCE                                      The scope is the portion of text in which rules are applied (sentence is the standard option but also paragraph, clause, phase and more can be employed)
        
		IDENTIFY(***)                                       The "identify" statement corresponds to the template the rule refers to.
        
		@field [ type your linguistic condition here ]      The @field is your previously configured extraction class that will be populated with the value extracted with the rule.
                                                            Square brackets enclose the rule (linguistic condition) extracting target data (this is where you'll be using attributes).

        Scope                       https://docs.expert.ai/studio/latest/languages/scope/
        Extraction rules overview   https://docs.expert.ai/studio/latest/languages/extraction/rules/

        Each time you enable, disable or modify your rules, remember to compile your edits by pressing F6 or clicking on the "Build" button.
        Compiling rules after your modification allows for applying them on text promptly and observing the behavior of each new sample rule.

        You can use auto-completion features using the Tab key (expert.ai Studio will automatically suggest attributes and feature while developing rules) or by using built-in
        Smart Completion capabilities pressing on Ctrl+Space (the Smart Completion engine will always suggest the best option to get going with rules development while writing rules).

        Smart Completion:       https://docs.expert.ai/studio/latest/studio/how-to/manage-code/smart-completion/

3- Analyzing text
        In the Project panel, click on the test folder and you will find all documents integrated in this project.
        You can analyze documents one by one opening them and pressing F5 or all together clicking on the third button on the left of the toolbar above.

        Analyzing text immediately prompts:
        Your rules results              which you can further explore in the Extraction panel (horizontal panel bar below)
        The Semantic Analysis           showing all data coming from disambiguation including PoS tagging, Dependency Parsing, Syntactical analysis and more (horizontal panel bar below).
        The Disambiguation Info         showing all standard domains, relevant elements and entities natively recognized and gathered from text (vertical panel bar on the right). 

        You can use the Semantic Analysis to further explore disambiguation outcomes sentence by sentence. By double clicking on tokens you can view them directly in the knowledge graph and use respective syncon IDs and lemmas in your rules!

        Use the Disambiguation Info panel to quickly understand the main topics and main elements of the document and get a rough idea of the information to focus on for the development of your taxonomy/extraction objects and relative rules.

        Use the Extraction panel to further explore your extractions results by highlighting extractions in your texts and double clicking on the results to recall rules and eventually tune them in

        Disambiguation Info:    https://docs.expert.ai/studio/latest/studio/ui-reference/tool-windows/disambiguation-info/
        Extraction (results):   https://docs.expert.ai/studio/latest/studio/ui-reference/tool-windows/extraction/
        Semantic Analysis:      https://docs.expert.ai/studio/latest/studio/ui-reference/tool-windows/semantic-analysis/

4- Attributes
        To employ attributes in your rules you can use shortcuts and Smart completion features.
        
		Use Ctrl+Shift+K to autocomplete a KEYWORD attribute for your rules. You will need to manually enter the keyword string you want to find in text.
        
		Use Ctrl+Shift+L to autocomplete a LEMMA attribute for your rules. You will need to manually enter the lemma you want to find in text (only knowledge graph lemmas allowed).
        
		Use Ctrl+Shift+S to autocomplete a SYNCON attribute for your rule. This shortcut will automatically open the Knowledge Graph panel in the horizontal panel bar below to let you choose and insert chosen concepts in your rule (by searching, pinning (double click) and then committing the pinned concepts with the dedicated button in the lower right corner of the panel)
        
		Use Ctrl+Shift+A to autocomplete an ANCESTOR attribute for your rule. This shortcut will automatically open the Knowledge Graph panel like with SYNCON. Beware that ANCESTOR identifies a token by specifying its syncon number (ID) and considering this concept as a chain’s starting node. Any token disambiguated as a syncon belonging to this chain will be identified. You can limit the coverage of the semantic chain by selecting the number of levels of the offspring you are interested in (e.g. ANCESTOR (ID:number of levels)).  

        These are only few of the possible attributes and operand you can employ to shape your algorithms perfect.
        Expert.ai provides a full set of attributes and features you can employ in your rules to quickly build accurate and performing text mining algorithms
        Find more information on the attributes and operators you can employ on the expert.ai languages reference portal (link below):

        expert.ai languages reference     http:docs.expertsystem.com/languages/

5- Adding more documents
        You can add further documents to this project by right-clicking on the "test" folder in the Project Panel (on the right), hovering on New and selecting File.
        
		Choose a name for your empty document (i.e. "test.txt") and hit Enter. You can open your new text file simply double clicking it and writing text into it.
        
		You can also add existing document to this project simply selecting them in your file system and dragging and dropping the files in the "test" folder from the interface in the Project Panel.

        Add more text files:  https://docs.expert.ai/studio/latest/studio/how-to/prepare-test-files/create/

6- What should I do if I get errors in the Console panel?
        If your rules are malformed, it may be generating errors. These errors are prompted by the Console panel below in the horizontal panel bar.
        
		Console will always guide you in the process of identifying the problem and eventually suggest a possible solution. Yet, if you can't find a solution, remember you can always deactivate a rule by commenting rules with the shortcut Ctrl+/.
		
		TIP: comment single portions of rules to better identify where the problem lies. 
        
		Commenting rules allows for deactivating rules and adding comments to your rules to keep track of changes or remember useful details.

        Console:    https://docs.expert.ai/studio/latest/studio/ui-reference/tool-windows/console/

7- How many rules do I need to develop?
        There's not a fixed or recommended number of rules you should develop for your use-cases. It is recommended to develop as many as you need to increase your model accuracy. 
		
		It is not a matter of quantity or complexity; the most important aspect is the effectiveness of your rules.
        
		The suggested approach to this is to avoid writing one or few rules "to do all" - not all extractions need one simple rule to do everything, sometimes it's simply better to integrate your rules set with more to make your whole compiled algorithm more efficient.

8- Where should I start in choosing concepts and attributes for my rules?
        Start from analyzing your documents. Use the Disambiguator Info to promptly get a rough idea of the document contents (domains, entities, main concepts, ecc) and create your extraction objects or templates accordingly
        
		i.e. if your documents contain many people names and they're all politicians, then the document is indeed/actually about politics, so you may want to create a POLITICIANS template to extract the politician names!

        Rely on the Semantic Analysis panel to identify disambiguated syncons and gather the exact syncon ID from it. Here you can also check if some lemmas are “stand alone” or if they are part of collocations, which is very important when writing rules. 

        Read your documents to identify items, concepts, words and collocations to integrate your rules with using specific attributes like LEMMA, SYNCON and ANCESTOR.

        Test your rules often! Once you're done enriching a rule, build your rules and analyze your document to further explore your results and identify areas for improvement, if there are any.

9- How do I know if my rules are good enough?
        Building your rules often and analyzing documents to test your rules and explore your results, is a good way to measure your algorithm quality.
        
		In addition, Expert.ai Studio has an integrated QA and Annotation engine (Annotation panel in the horizontal panel bar on the right) to manually annotate extractions by selecting text directly from documents, right clicking on selected text and clicking on annotate extraction.
        
		Annotating texts allows for applying extraction tags/targets to your documents automatically generating precision, recall and f-measure scores whilst making it easier to identify false positive, misses and more.

        Annotations:    https://docs.expert.ai/studio/latest/studio/ui-reference/tool-windows/annotation/
