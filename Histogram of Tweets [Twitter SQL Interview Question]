SELECT T1."bucket" AS "tweet_bucket"
,COUNT (T1."user") AS "users_num"

FROM (
  SELECT count(t.tweet_id) "bucket"
  ,t.user_id "user"

  FROM tweets  t

  WHERE t.tweet_date BETWEEN '2022-01-01 00:00:00' AND '2022-12-31 23:59:59'

  GROUP BY t.user_id
) AS T1

GROUP BY "tweet_bucket"
