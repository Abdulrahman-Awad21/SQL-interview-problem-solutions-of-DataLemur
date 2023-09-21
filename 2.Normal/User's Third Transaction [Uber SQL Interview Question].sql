SELECT "A"."user_id"
,"A"."spend"
,"A"."transaction_date"

FROM (SELECT t.user_id	"user_id"
    ,t.spend	"spend"
    ,t.transaction_date "transaction_date"
    ,RANK() OVER(PARTITION BY t.user_id	 ORDER BY t.transaction_date ASC) "RANK"
    FROM transactions t) "A"
    
WHERE "A"."RANK" = 3