-- 1.1
select u.user_id,oi.quantity
from users u
join orders o on o.user_id=u.user_id
join order_items oi on oi.order_id=o.order_id
group by u.user_id;
-- 1.2

select avg(r.rating) as a, p.name, p.description
from products p
join reviews r on p.product_id=r.product_id
group by p.product_id
order by a desc limit 5;

-- 1.3
select s.carrier
from shipping s join order_items oi on s.order_id = oi.order_id
group by shipping_id order by oi.quantity desc limit 1;

-- 1.4
select a.address_id 
from addresses a 
left join orders o on a.user_id = o.user_id 
left join  order_items oi on o.order_id = oi.order_id 
having o.status='completed'
order by oi.quantity desc limit 1;

-- 1.5




