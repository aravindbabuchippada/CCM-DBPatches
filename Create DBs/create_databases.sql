--set PGPASSWORD=Aquila12# (we need to enter your Postgresql superuser's global password)

--psql -U postgres -d postgres -v dbname=ccmhelperdb -v username=ccmhelper -v password=ccmhelper -f create_databases.sql
--psql -U postgres -d postgres -v dbname=ccmappledb -v username=ccmapple -v password=ccmapple -f create_databases.sql
--psql -U postgres -d postgres -v dbname=ccmsamsungdb -v username=ccmsamsung -v password=ccmsamsung -f create_databases.sql

-- 1. Create user first (global)
create user :username with password :'password';

-- 2. Create database
create database :dbname;

-- 3. Grant connect + usage rights on the database
grant all privileges on database :dbname to :username;

-- 4. Switch to the database to grant more rights
\c :dbname

-- 5. Grant rights on public schema (default schema)
grant usage, create on schema public to :username;

-- 6. Grant tablespace privileges
grant all on tablespace hcxindex to :username;
grant all on tablespace hcxtrans to :username;
