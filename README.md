# Studio Sample Projects

This repository contains a number of *sample projects* for <a href="https://www.expert.ai/nl-suite/expert-ai-studio/"><b>expert.ai Studio</b></a>. 
The projects can be freely downloaded and opened with Studio and used for any purpose granted by the license.

You can download expert.ai Studio from the expert.ai <a href="https://developer.expert.ai/">developer portal</a>. For tutorials, videos and reference, have a look at the <a href="https://docs.expert.ai/studio/latest/">Studio documentation</a> portal.

This repository contains the following projects:

- Brand Reputation, in 5 languages (English, Spanish, French, German, Italian)
- Text Mining 4 Finance, in English
- Self-training PJ, in English

Each of the projects includes a description of its content and features as a README file in its `rules` folder.


## Brand Reputation

*A Brand Reputation analysis sample engine, in 5 languages*

The project aims to analyze a set of documents containing user opinions and reviews of laptops and netbooks. Documents will be **classified** against a taxonomy that will provide information about the following:

- the **feelings** expressed by the user in the text regarding the device (e.g. satisfaction, disappointment, indifference, etc.)
- the **global sentiment** that emerges from the whole text, which can be positive, negative, neutral or a mix of the three

In addition, it will extract information about the reviewed product: **brand and model**.

Documents chosen for this project are short to allow for better exploration of the categorization and extraction results. You are free to analyze longer documents and further develop the model to broaden its capabilities. 

This module is meant to provide you with a starting point to demonstrate one way to approach Brand Reputation with expert.ai. You can customize this project by adding your own categories and/or extractions and by integrating with your own categorization and extraction rules.

## Text Mining 4 Finance

*A real-life prototype for finance concepts*

This project is a **text mining model** prototype of medium complexity that's meant for processing **finance-centered press releases** and collect buyer-seller relationships, acquisition money, revenues incomes, net loss, net incomes, the press release publisher personal info and much more. 

For this prototype, we chose the Symbolic approach and expert.ai Studio to benefit from major accuracy and tweakability - the model has an additional **javascript post-processing** stage to improve the overall accuracy of the relationships.
	
Documents chosen for this project are short to allow for better exploration of the extraction results. You are free to analyze longer documents and further develop the model to broaden its capabilities. This module is only a starting point, you can customize it by adding your own taxonomies and/or expanding existing extractions.
	
## Self-training PJ

*A training project as an overview of the main features*

This training project is a **guided instructional tour** into the core features of expert.ai Studio for developing NLP models with the Symbolic approach. In the "rules" folder of the project sources, you will find `*_training.cr` files containing pre-built rules you can uncomment to test on dedicated test documents stored in the "test" folder of the sources. 

Every rule sample is outlined with thorough descriptions of the functionalities to explore, tips and tricks and links to the online documentation. Within the same `rules` folder, you will find `*_hands_on.cr` files containing pre-built sections with specific assignments to put those features you learned into practice on the same data set available in the `test` folder. All `main` sources files contain information explaining how all sources work and how to properly configure your future projects.

This project is meant for **self-training purposes only**. The suggested use of the training is to start reading through the sections in the `main.cr` file inside the `rules` folder in the project sources using the `*_training.cr` files for training and for the respective `*_hands_on.cr` files for practicing. 

Training files will cover both text classification and data mining algoriothms and features as well as more advanced and complex configurations, features and tools. 

To learn the basics of the Symbolic approach in expert.ai, you only need to learn and practice using the files below:

**Text Classification**
- `crules_introduction.cr`
- `crules_training.cr`
- `crules_training_hands_on.cr`
			
**Data Mining**
- `erules_introduction.cr`
- `erules_training.cr`
- `erules_training_hands_on.cr`
			
You can also access to advanced topics and functionalities directly from the `main.cr` file in the `rules` folder of the project sources.

