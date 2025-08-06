SELECT 
    tweet_count AS tweet_bucket,
    COUNT(user_id) AS users_num 
FROM (
    SELECT 
        user_id,
        COUNT(tweet_id) AS tweet_count 
    FROM tweets 
    WHERE EXTRACT(YEAR FROM tweet_date) = 2022
    GROUP BY user_id
) AS Total_tweets
GROUP BY tweet_count
ORDER BY tweet_count;