--psql -U ccmhelper -d ccmhelperdb -f client_details.sql
\c ccmhelperdb;

set search_path to public;

create table if not exists client_details (
    id           	    serial constraint client_details_pk primary key,
    client_id               varchar(50) not null,
    db_url                  varchar(500) not null,
    db_username             varchar(50) not null,
    db_password             varchar(50) not null,
    created_on              timestamp with time zone not null default current_timestamp,
    created_by              varchar(100),
    modified_on             timestamp,
    modified_by             varchar(100)
);

-- insert into client_details (client_id,db_url,db_username,db_password,created_by)
-- values('ccmapple','jdbc:postgresql://localhost:5432/ccmappledb','ccmapple','ccmapple','script');

-- insert into client_details (client_id,db_url,db_username,db_password,created_by)
-- values('ccmsamsung','jdbc:postgresql://localhost:5432/ccmsamsungdb','ccmsamsung','ccmsamsung','script');