---multiple join
select customer_id,product_id,sales,quantity from sales

select product_id,category from product

select customer_id,customer_name,city from customer

select sum(s.sales),avg(s.quantity),p.category,c.customer_name,c.city from sales as s
inner join product as p
on s.product_id = p.product_id
inner join customer as c
on s.customer_id = c.customer_id
group by p.category,c.customer_name,c.city
having sum(s.sales) > 500
order by avg(s.quantity) ASC
limit 10
offset 10

---right join
select order_line,product_id,sales,quantity from sales

select product_id,sub_category from product

select sum(s.sales),avg(s.quantity),p.sub_category from sales as s
right join product as p
on s.product_id = p.product_id
group by p.sub_category
having sum(s.sales) > 500
order by avg(s.quantity) ASC
limit 10
offset 10

---left join
select order_line,product_id,sales,quantity from sales

select product_id,sub_category from product

select sum(s.sales),avg(s.quantity),p.sub_category  from sales as s
left join product as p
on s.product_id = p.product_id
group by p.sub_category 
having sum(s.sales) > 800
order by avg(s.quantity) ASC
limit 10
offset 10 

---full join
select order_line,product_id,sales,quantity from sales

select product_id,sub_category from product

select sum(s.sales),avg(s.quantity),p.sub_category from sales as s
full join product as p
on s.product_id = p.product_id
group by p.sub_category
having sum(s.sales) > 1000
order by avg(s.quantity) ASC
limit 10
offset 10






