select to_char(cast(created_at as date),'MM-YYYY') as REFUND_MONTH,NOTE as REASON,count(distinct id) REFUND_ORDERS
FROM "FIVETRAN_DATABASE"."SHOPIFY_DS"."REFUND"
GROUP BY 1,2 
ORDER BY 1 DESC