SECTIONS
{
	@BODY(STANDARD,1SCORE)
}

SEGMENTS
{
	@TITLE(1.0),
	@SEGMENT2(1.0)
}

SCOPE SENTENCE
{
    SEGMENT(TITLE)
    {
        POSITION(BEGIN SECTION)
    }

}

SEGMENTS DEFINITION
{
    SEGMENT(TITLE)
    {
        INTERVAL = SINGLE:FIRST
    }
}

TEMPLATE(PRODUCT)
{
	@BRAND,
	@PRODUCT

	MERGE WHEN SENTENCE
}