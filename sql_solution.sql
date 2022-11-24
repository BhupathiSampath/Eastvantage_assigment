.headers on
.mode csv
.separator ;
.output final_report.csv
select c.customer_id as Customer, c.age as Age, i.item_name as Item, sum(o.quantity) as Quantity from customers as c inner join sales as s on c.customer_id=s.customer_id inner join orders as o on s.sales_id=o.sales_id inner join items as i on o.item_id==i.item_id where Age BETWEEN 18 and 35 and Quantity is not null and Quantity!=0 group by c.customer_id,i.item_name order by Customer;
