
# The data from 2013:

# These functions collect the data from March 2013. To change the dates, change the "2013/03/*.out.gz"
# into another dates, for example /2014/07/*.out.gz for July 2014.


# The total tweets from March 2013

function q1 {

	zless /net/corpora/twitter2/Tweets/2013/03/*.out.gz | \
	/net/corpora/twitter2/tools/tweet2tab -i text | wc -l
}


# The total tweets from March 2013 about Artificial Intelligence

# To change the search words, change ""Kunstmatige Intelligentie\|Artificial Intelligence""
# into the keywords that you want to use.

function q2 {
	
	zless /net/corpora/twitter2/Tweets/2013/03/*.out.gz | \
	/net/corpora/twitter2/tools/tweet2tab -i text | \
	grep -iw "Kunstmatige Intelligentie\|Artificial Intelligence" | wc -l
}

echo "The total tweets from March 2013:"
q1


echo "The total tweets from March 2013 about artificial Intelligence"
q2