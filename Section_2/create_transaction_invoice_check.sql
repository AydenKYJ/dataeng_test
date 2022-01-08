-- Create transaction invoice on view to check
CREATE VIEW cardealership_store.transaction_invoice AS
select 
Sales.salesperson_name,
Cust.customer_name,
Cust.customer_phone,
Car.car_manufacturer,
Car.car_model,
Car.car_weight,
Car.car_price
from cardealership_store.car_transaction_invoice TI
left join cardealership_store.car_information Car
on TI.car_serial = Car.car_serial 
left join cardealership_store.customer Cust
on TI.customer_id = Cust.customer_id 
left join cardealership_store.salespersonal Sales
on TI.salesperson_id = Sales.salesperson_id;