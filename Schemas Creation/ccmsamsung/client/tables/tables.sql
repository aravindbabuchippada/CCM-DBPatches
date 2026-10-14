set search_path to client;

create table if not exists clients(
	id			serial constraint ps_pk primary key,
	client_name		varchar(100) not null,
	active              	integer not null default 1, 
	created_on      	timestamp with time zone not null default current_timestamp,
	created_by      	varchar(100),
	modified_on     	timestamp,
	modified_by     	varchar(100)
);