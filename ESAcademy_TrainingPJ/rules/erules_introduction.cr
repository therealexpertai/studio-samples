


							//------------------------------------------------------------//
							//             DATA MINING/EXTRACTION INTRODUCTION            //
							//------------------------------------------------------------//



//A) PRELIMINARY REMARKS FOR DATA MINING
//   (please see https://docs.expert.ai/studio/latest/languages/extraction/ for a complete explanation)
//______________________________________________________________________________________________________________________

/*
     BEFORE STARTING TO WORK WITH THIS TRAINING PROJECT, WE RECOMMEND THAT:

     1) YOU ENABLE THE RULES ONE AT A TIME BY HIGHLIGHTING THE RULE ITSELF,
        THEN UNCOMMENT THE SELECTION BY GOING TO THE CODE MENU > "Comment with Line Comment" OR USE HOT-KEY CTRL+/
        (PLEASE DO NOT ENABLE THE RULE BELOW BECAUSE IT IS NOT VALID - THE CONDITION IS MISSING)

     2) EACH TIME YOU ENABLE, DISABLE OR MODIFY THE RULES, REMEMBER TO UPDATE THE PROJECT BY CLICKING ON THE
        BUTTONS "Build Project" or "Rebuild Project", SO THAT YOU CAN SEE YOUR CHANGES IN THE OUTPUT

     3) TO OBSERVE THE BEHAVIOR OF EACH SAMPLE RULE:
            - RETRIEVE THE SAMPLE TEXT FILE INDICATED AT THE TOP OF EACH RULE (i.e. NAME_OF_THE_FILE.TXT)
              FROM THE "test" FOLDER IN YOUR PROJECT FOLDER
            - DOUBLE-CLICK TXT FILE TO OPEN IT AS A NEW TAB AND CLICK ON THE "Analyze" BUTTON
            - THE EXTRACTION OUTPUT IS DISPLAYED IN THE "Extraction Results" PANEL

        Please note:
        This project is a demo and is meant to be used for training and demonstrative purposes,
        not for real data mining use case purposes.
*/



//B) STRUCTURE OF AN DATA MINING RULE
//   (please see https://docs.expert.ai/studio/latest/languages/extraction/rules/ for a complete explanation)
//______________________________________________________________________________________________________________________


//    SCOPE SENTENCE
//                              The scope is the portion of text to which the rules are applied
//								In this case, it is a sentence (default value) but it can be modified as needed
//								(please see https://docs.expert.ai/studio/latest/languages/scope/ for a complete explanation)
//
//	  {
//
//
//	  //In-line comments are the space for user notes about the content of a rule
//      (optional; not involved in the data mining process)
//
//
//    IDENTIFY(TEMPLATE)
//                              The "identify" statement corresponds to the template the rule refers to.
//			{
//
//				@field [ type your rule here ]
//
//                              Parentheses enclose the field to be valorized.
//								Brackets enclose the rule (condition) which will extract the data.
//							    (please see https://docs.expert.ai/studio/latest/languages/extraction/rules/
//                              for a complete explanation)
//
//
//			}
//
//		}
