-- How much are the customers spending?
select Cust.customer_name, sum(Car.car_price) as Expenditure from cardealership_store.customer Cust
left join cardealership_store.car_transaction_invoice TI
on Cust.customer_id = TI.customer_id
left join cardealership_store.car_information Car
on TI.car_serial = Car.car_serial
group by Cust.customer_name
order by sum(Car.car_price) desc;

-- What car brands are the top sales?
select Car.car_manufacturer, count(TI.car_model) as sales_qty, sum(car_price) as Total_sales
from cardealership_store.car_information Car
left join cardealership_store.car_transaction_invoice TI
on Car.car_serial = TI.car_serial
group by Car.car_manufacturer
order by Total_sales desc;