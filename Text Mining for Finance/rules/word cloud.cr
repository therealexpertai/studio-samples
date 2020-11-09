
SCOPE SENTENCE
{
	// Extract all relevant lemmas within the document
	IDENTIFY(Wordcloud)
	{
		@Wordcloud[RELEVANT(LEMMA)]
	}

	// Extract all relevant concepts/syncons within the document
	IDENTIFY(Wordcloud)
	{
		@Wordcloud[RELEVANT(SYNCON)]
	}

}

// All outcomes of this rules set are being merged all together by using merge options (see the config.cr file for reference)



/*
Reference:

RELEVANT attribute:			https://docs.expert.ai/studio/latest/languages/attributes/relevant/
*/
