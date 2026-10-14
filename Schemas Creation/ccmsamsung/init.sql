-- Run this command to run this file only for ccmsamsung client:

-- psql -U ccmsamsung -d ccmsamsungdb -q -f init.sql

-- Creating the necessary Schemas for each Microservice:

\echo Creating the Security Schema...
create schema if not exists security;

\echo Creating the Client Schema...
create schema if not exists client;

\echo Creating the Customer Schema...
create schema if not exists customer;

-- Connecting and creating the respective schemas tables & seeds:

\echo Connecting to Security Schema...
set search_path to security;

\echo Creating the Security Schema Tables...
\i security/tables/tables.sql;

\echo Creating the Security Schema Seeds...
\i security/seeds/users_seed.sql;


\echo Connecting to Client Schema...
set search_path to client;

\echo Creating the Client Schema Tables...
\i client/tables/tables.sql;

\echo Creating the Client Schema Seeds...
\i client/seeds/clients_seed.sql;


\echo Connecting to Customer Schema...
set search_path to customer;

\echo Creating the Customer Schema Tables...
\i customer/tables/tables.sql;

\echo Creating the Customer Schema Seeds...
\i customer/seeds/customers_seed.sql;
\i customer/seeds/customer_client_map_seed.sql;


\q