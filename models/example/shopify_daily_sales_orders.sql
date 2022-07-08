
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='table') }}

SELECT CAST(CREATED_AT AS DATE)AS ORDER_DATE,SUM(TOTAL_PRICE_USD) AS TOTAL_SALES,COUNT(ID) AS TOTAL_ORDERS FROM "FIVETRAN_DATABASE"."SHOPIFY_DS"."ORDER"
GROUP BY 1
having total_sales > 0
ORDER BY 1 desc


/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
