
# The data from 2019:

# These functions collect the data from March 2019. To change the dates, change the "2019/03/*.out.gz"
# into another dates, for example /2014/07/*.out.gz for July 2014.

# The total tweets from March 2019

function q1 {
	
	zless /net/corpora/twitter2/Tweets/2019/03/*.out.gz | \
	/net/corpora/twitter2/tools/tweet2tab -i text | wc -l
}

# The total tweets from March 2013 about Artificial Intelligence

# To change the search words, change ""Kunstmatige Intelligentie\|Artificial Intelligence""
# into the keywords that you want to use.

function q2 {
	
	zless /net/corpora/twitter2/Tweets/2019/03/*.out.gz | \
	/net/corpora/twitter2/tools/tweet2tab -i text | \
	grep -iw "Kunstmatige Intelligentie\|Artificial Intelligence" | wc -l
}

echo "The total tweets from March 2019:"
q1


echo "The total tweets from March 2019 about artificial Intelligence"
q2
