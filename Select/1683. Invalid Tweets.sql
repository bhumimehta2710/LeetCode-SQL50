SELECT tweet_id 
FROM Tweets 
WHERE LENGTH(content) > 15;

-- Here, I'm supposed to identify and retrieve the IDs of invalid tweets from the 'Tweets' table. 
-- As given in problem statement, tweet is invalid if the number of characters used in the content of the tweet is greater than 15. 
-- To identify this, I'm using 'LENGTH' function on 'content' column to determine the number of characters in the tweet content. 
-- If 'LENGTH(content)>15' ,the tweet will be considered as invalid and tweet_id will be returned.
