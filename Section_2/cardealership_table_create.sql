--drop schema if exists cardealership_store cascade
create schema cardealership_store

-- Create tables
-- Table for car information
create table cardealership_store.car_information (
	car_serial int not null,
	car_model text not null,
	car_manufacturer text not null,
	car_weight int not null,
	car_price int not null,
	primary key (car_serial)
);

-- Table for transaction invoice
create table cardealership_store.car_transaction_invoice (
	invoice_id int not null,
	salesperson_id int not null,
	customer_id int not null,
	car_model text not null,
	car_serial int unique not null,
	car_manufacturer text not null,
	sales_datetime timestamp not null default current_timestamp,
	primary key (invoice_id)
);

-- Table for customer information
create table cardealership_store.customer (
	customer_id int not null,
	customer_name text not null,
	customer_phone int not null,
	primary key (customer_id)
);
	
-- Table for salesperson information
create table cardealership_store.salespersonal (
	salesperson_id int not null,
	salesperson_name text not null,
	primary key(salesperson_id)
);

-- Set Invoice Table Foreign Keys
alter table cardealership_store.car_transaction_invoice 
add constraint fk_car_serial 
foreign key (car_serial) references cardealership_store.car_information(car_serial);

alter table cardealership_store.car_transaction_invoice
add constraint fk_customer_id 
foreign key (customer_id) references cardealership_store.customer(customer_id);

alter table cardealership_store.car_transaction_invoice
add constraint fk_salesperson_id 
foreign key (salesperson_id) references cardealership_store.salespersonal(salesperson_id);



