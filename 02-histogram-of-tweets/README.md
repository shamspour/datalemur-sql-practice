# Histogram of Tweets – SQL Practice

## Problem
Given a table of Twitter tweet data, write a query to obtain a histogram of tweets posted **per user** in 2022.  
Output the tweet count per user as the bucket, and the number of Twitter users who fall into that bucket.

> Group the users by the number of tweets they posted in 2022, and count the number of users in each group.

## Table

| tweet_id | user_id | msg                                                          | tweet_date           |
|----------|---------|--------------------------------------------------------------|----------------------|
| 214252   | 111     | Am considering taking Tesla private at $420. Funding secured.| 2021-12-30 00:00:00  |
| 739252   | 111     | Despite the constant negative press covfefe                  | 2022-01-01 00:00:00  |
| 846402   | 111     | Following @NickSinghTech on Twitter changed my life!         | 2022-02-14 00:00:00  |
| 241425   | 254     | If the salary is so competitive why won’t you tell me what it is?| 2022-03-01 00:00:00|
| 231574   | 148     | I no longer have a manager. I can't be managed               | 2022-03-23 00:00:00  |

## Key SQL Clauses Used

- `EXTRACT(YEAR FROM ...)` – Filter tweets from 2022.
- `GROUP BY user_id` – Count tweets per user.
- `COUNT()` – Get number of tweets and number of users.
- Nested subquery – Group users by tweet count.
- `GROUP BY tweet_count` – Build the histogram buckets.

## Solution ([see solution.sql](./solution.sql))

```sql
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