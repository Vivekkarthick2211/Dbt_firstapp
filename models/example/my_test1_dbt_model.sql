


with customers as (select * from {{ ref('stg_customer') }}),
 orders as (select * from {{ ref('stg_orders') }}) ,

final as (select cust.customername,cust.customerlocation,cust.customermail ,ord.orderstatus,ord.price from customers cust
left join orders ord where ord.custkey=cust.custid)

select * from final