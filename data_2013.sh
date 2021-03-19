
# The data from 2013:


# The total tweets from March 2013

function q1 {

	zless /net/corpora/twitter2/Tweets/2013/03/*.out.gz | \
	/net/corpora/twitter2/tools/tweet2tab -i text | wc -l
}


# The total tweets from March 2013 about Artificial Intelligence

function q2 {
	
	zless /net/corpora/twitter2/Tweets/2013/03/*.out.gz | \
	/net/corpora/twitter2/tools/tweet2tab -i text | \
	grep -iw "Kunstmatige Intelligentie\|Artificial Intelligence" | wc -l
}

echo "The total tweets from March 2013:"
q1


echo "The total tweets from March 2013 about artificial Intelligence"
q2