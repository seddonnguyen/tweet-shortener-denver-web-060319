# Write your code here.
def dictionary(str)
	dic = {
		"hello" => "hi",
		"to" => "2",
		"two" => "2",
		"too" => "2",
		"for" => "4",
		"For" => "4",
		"four" => "4",
		"be" => "b",
		"you" => "u",
		"at" => "@",
		"and" => "&"
	}

	if dic.has_key?(str)
		return dic[str]
	else
		return str
	end
end

def word_substituter(str)
	arr = str.split(' ')
	words = []
	arr.each do |word|
		words << dictionary(word)
	end
	words.join(' ')
end

def bulk_tweet_shortener(arr)
	arr.each do |tweet|
		puts word_substituter(tweet)
	end
end

def selective_tweet_shortener(str)
	if str.length > 140
		return word_substituter(str)
	else
		return str
	end
end

def shortened_tweet_truncator(str)
	tweet = selective_tweet_shortener(str)
	if tweet.length > 140
		return "#{tweet.slice(0, 136)} ..."
	else
		return tweet
	end
end