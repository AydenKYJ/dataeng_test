-- Creating dummy data to test out the scripts
insert into cardealership_store.salespersonal(salesperson_id, salesperson_name)
values 
(1, 'Dog'),
(2, 'Cat'),
(3, 'Mouse'),
(4, 'Bird');

insert into cardealership_store.customer(customer_id, customer_name, customer_phone)
values 
(1, 'John Wick', 111111),
(2, 'Joe Rogan', 222222),
(3, 'Jessie James', 333333),
(4, 'Ryan Sylvia', 444444),
(5, 'Patricia Mok', 555555),
(6, 'James Franco', 666666);

insert into cardealership_store.car_information(car_model, car_manufacturer, car_weight, car_serial, car_price)
values 
('Toyota Camry Hybrid', 'Toyota', 1000001, 5000, 137000),
('Toyota Camry Hybrid', 'Toyota', 1000001, 5001, 137000),
('Toyota Camry Hybrid', 'Toyota', 1000001, 5002, 137000),
('Toyota Camry Hybrid', 'Toyota', 1000001, 5003, 137000),
('Toyota Camry Hybrid', 'Toyota', 1000001, 5004, 137000),
('Honda Civic 2021', 'Honda', 1000002, 6000, 125000),
('Honda Civic 2021', 'Honda', 1000002, 6001, 125000),
('Honda Civic 2021', 'Honda', 1000002, 6002, 125000),
('Honda Civic 2021', 'Honda', 1000002, 6003, 125000),
('Honda Civic 2021', 'Honda', 1000002, 6004, 125000),
('Honda Jazz', 'Honda', 1000003, 7000, 124000),
('Honda Jazz', 'Honda', 1000003, 7001, 124000),
('Honda Jazz', 'Honda', 1000003, 7002, 124000),
('Honda Jazz', 'Honda', 1000003, 7003, 124000),
('Honda Jazz', 'Honda', 1000003, 7004, 124000),
('Lamborghini Aventador', 'Lamborghini', 1000004, 8000, 1498000);

insert into cardealership_store.car_transaction_invoice(invoice_id, salesperson_id, customer_id, car_model, car_serial, car_manufacturer, sales_datetime)
values 
(1, 2, 4, 'Toyota Camry Hybrid', 5000, 'Toyota', '2021-09-02 19:10:25'),
(2, 2, 2, 'Honda Civic 2021', 6000, 'Honda', '2021-09-01 14:10:25'),
(3, 4, 3, 'Honda Jazz', 7000, 'Honda', '2021-09-04 12:10:25'),
(4, 1, 5, 'Toyota Camry Hybrid', 5001, 'Toyota', '2021-09-04 12:10:25'),
(5, 3, 6, 'Toyota Camry Hybrid', 5002, 'Toyota', '2021-09-04 12:10:25'),
(6, 4, 1, 'Honda Jazz', 7001, 'Honda', '2021-09-04 12:10:25'),
(7, 1, 1, 'Lamborghini Aventador', 8000, 'Lamborghini', '2021-09-05 09:10:25');