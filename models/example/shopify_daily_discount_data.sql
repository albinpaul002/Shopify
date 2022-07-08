select cast(created_at as date) as order_date,discount.code,discount.value 
as discount_value,count(o.id) Order_Count,sum(total_discounts) total_discounts
from  "FIVETRAN_DATABASE"."SHOPIFY_DS"."DISCOUNT_APPLICATION" discount
inner join "FIVETRAN_DATABASE"."SHOPIFY_DS"."ORDER" o 
on discount.order_id = o.id
where discount.code is not null
group by 1,2,3
order by 4 desc
