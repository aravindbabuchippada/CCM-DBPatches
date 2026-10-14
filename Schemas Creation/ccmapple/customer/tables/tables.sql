set search_path to customer;

create table if not exists customers(
	id			serial constraint customers_pk primary key,
	customer_name		varchar(100) not null,
	active              	integer not null default 1, 
	created_on      	timestamp with time zone not null default current_timestamp,
	created_by      	varchar(100),
	modified_on     	timestamp,
	modified_by     	varchar(100)
);

create table if not exists customer_client_map(
	id			serial constraint customer_client_map_pk primary key,
	customer_id		integer not null constraint customer_client_map_fk1 references customer.customers(id),
	client_id		integer not null constraint customer_client_map_fk2 references client.clients(id),
	active              	integer not null default 1, 
	created_on      	timestamp with time zone not null default current_timestamp,
	created_by      	varchar(100),
	modified_on     	timestamp,
	modified_by     	varchar(100)
);