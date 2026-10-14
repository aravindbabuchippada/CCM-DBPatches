set search_path to security;

create table if not exists users(
	id			serial constraint ps_pk primary key,
	login_id		varchar(20) not null,
	password		varchar(500) not null,
	first_name		varchar(200) not null,
	last_name		varchar(200) not null,
	active              	integer not null default 1, 
	created_on      	timestamp with time zone not null default current_timestamp,
	created_by      	varchar(100),
	modified_on     	timestamp,
	modified_by     	varchar(100)
);