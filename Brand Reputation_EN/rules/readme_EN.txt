BRAND REPUTATION _ README FILE

---------------------
SCOPE OF THE PROJECT |
---------------------

The project aims to analyze a set of documents containing user opinions and reviews of laptops and netbooks. Documents will be classified against a taxonomy that will provide information about the following:

	- the feelings expressed by the user in the text regarding the device (e.g. satisfaction, disappointment, indifference, etc.)
	- the global sentiment that emerges from the whole text, which can be positive, negative, neutral or a mix of the three
	
In addition, it will extract information about the reviewed product: brand and model.

Documents chosen for this project are short to allow for better exploration of the categorization and extraction results. You are free to analyze longer documents and further develop the model to broaden its capabilities. This module is meant to provide you with a starting point to demonstrate one way to approach Brand Reputation with Expert.AI. You can customize this project by adding your own categories and/or extractions and by integrating with your own categorization and extraction rules.

----------------
METHOD         |
----------------
This NLU model is meant for identifying brand reputation by collecting evidence from the text on the opinion of the writer on the reviewed/mentioned brand or product.

Since one's opinion on a product is not always entirely positive or negative, categories belonging to the "Opinion" branch of the taxonomy will be generating results consistent with evidence found in the text regardless of their "positive" or "negative" nature. In addition, positive, neutral, and negative sentiment will be provided for every document based on the presence of users' opinions and positions that clearly go in that direction (e.g unreliability will generate a negative sentiment label).

This model makes it possible to analyse reviews containing both positive and negative factors and simultaneously gives the analyst greater detail and consistency on the opinions in the text whilst avoiding discriminating sentiment with a dichotomic approach (either positive or negative, no "shades of grey"). This approach also makes it possible to give greater visibility on the specific wording and parts of text generating an opinion tag on the brand or product itself.

---------
CONTENT |
---------

The project features the following list of files in the "rules" folder: 

main.cr
main.jr
config.cr
Brand_and_Product_ETL.cr
Disappointment.cr
Dissatisfaction.cr
Indifference.cr
Reliability.cr
Satisfaction.cr
Unreliability.cr

The first three files are configuration files (detailed description in the next paragraph), while the rest of the files contain rules for the different branches of the taxonomy or for the extraction fields.



----------------------------------------
FILE DESCRIPTION AND DEVELOPMENT LOGICS |
----------------------------------------

- "main.cr" --> this file is used to manage and import all the other rule and configuration files. It only contains IMPORT statements, no rules nor configurations

- "config.cr" --> the configuration file that contains the definition of SECTIONS, SEGMENTS and also the extraction TEMPLATES and related FIELDS

-  "Brand_and_Product_ETL.cr" --> contains extraction rules for the project templates. Extracted information are the reviewed product (e.g. HP model D15j56) and the brand alone. The brand extraction also features the SMARTENTRY transformator, which is used to give in output the most representative base form of the attribute.

- "Disappointment.cr" --> contains rules for the "disappointment" branch. The user expresses disappointment if s/he writes about frustration, being stuck on a technical issue, customer care that refuses to help, or other unpleasant situations.

- "Dissatisfaction.cr" --> contains rules for the "dissatisfaction" branch. The user expresses dissatisfaction if the product does not meet the expected requirements or does not reach a decent level of quality. The user rates it with poor evaluation and uses expressions like "terrible product", "poor quality" and similar.

- "Indifference.cr" --> contains rules for the "indifference" branch. The user expresses indifference by writing that the product has average performance, average quality of some of its components or simply meets the standards without being great or bad. 

- "Reliability.cr" --> contains rules for the "reliability" branch. The user states that the product is reliable, works smoothly with no slowdowns or other issues. The user is happy with the device since it gives no trouble at any time. 

- "Satisfaction.cr" --> contains rules for the "satisfaction" branch. The user expresses satisfaction for the product by giving it a high rate in the evaluation and by listing all the positive aspects of the device, from the quality of the materials to the the overall performance. The user, often after having tried different operation for a certain amount of time, may also state that the device meets the standards that s/he was looking for.    

- "Unreliability.cr" --> contains rules for the "unreliability" branch. The user expresses the unreliability of the product mainly by stating that it was impossible for him/her to perform some tasks due to failures and errors. Sometimes s/he may also refer to damages, missing hardware or software or other kinds of corrupted/defective components.   

- "main.jr" --> this file is used to perform different kinds of operations for pre- and post-processing of the documents. Functions that can be activated in the main.jr are:

	ONPREPARE: it modifies the text before the semantic analysis and application of rules
	ONTAGGER: it applies tags to certain entities in order to improve disambiguation
	ONFINALIZE: it modifies the standard json output
	ONCATEGORIZER: it applies post processing logic to the categorization module
	
In the project, the ONCATEGORIZER function is used to perform the following actions:

	function onCategorizer() {
		var RESULTS = CLONE(ALL);

		var OPINION = SET(["01.01", "01.02", "01.03", "01.04", "01.05", "01.06"])
		--> a SET opinion is created containing all categories of the opinion branch

		var OPINION_EXIST = INTERSECTION (OPINION, RESULTS)
		--> this set contains the categories of OPINION that appear in the results

		var POSITIV = SET(["01.01", "01.05"])
		var NEGATIV = SET(["01.02", "01.03", "01.04"])
		var NEUTRAL = SET(["01.06"])
		--> these sets contain positive/negative/neutral opinions

		var POSITIV_EXIST = INTERSECTION(POSITIV,RESULTS)
		var NEGATIV_EXIST = INTERSECTION(NEGATIV,RESULTS)
		var NEUTRAL_EXIST = INTERSECTION(NEUTRAL,RESULTS)
		--> intersection sets allow for collecting positive/negative/neutral opinions when they're actually in the results

		if(DIMENSIONS(POSITIV_EXIST, ">=",1))
		{
            RESULTS = INSERT(RESULTS, "02.01")
		}
		--> if at least one of the categories contained in the positive set appears in the results, then the "Positive" category of the Sentiment branch is automatically inserted. Same is done for negative and neutral (below)

		if(DIMENSIONS(NEGATIV_EXIST, ">=",1))
		{
			RESULTS = INSERT(RESULTS, "02.02")
		}

		if(DIMENSIONS(NEUTRAL_EXIST, ">=",1))
		{
			RESULTS = INSERT(RESULTS, "02.03")
		}

		WINNERS = RESULTS; --> these will be the winning results, which is the final output of categories that will be tagged on the document.
