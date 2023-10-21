CREATE DATABASE first_data_base;

DROP DATABASE first_data_base;

USE first_data_base;

ALTER DATABASE first_data_base RENAME TO firstDatabase;

CREATE DATABASE myFirstdatabase 

USE myFirstdatabase;

--Create table with CONSTRAINTS

CREATE TABLE
    users (
        uId SERIAL PRIMARY KEY,
        -- when we set a field to a primary key, this is auto not null.
        user_name VARCHAR(255) UNIQUE NOT NULL,
        --empty value won't be submitted 
        email VARCHAR(255) UNIQUE NOT NULL --empty value won't be submitted
    );

--Create table with composit key

CREATE TABLE
    user1 (
        uId SERIAL,
        -- when we set a field to a primary key, this is auto not null.
        user_name VARCHAR(255) UNIQUE NOT NULL,
        --empty value won't be submitted 
        email VARCHAR(255) UNIQUE NOT NULL,
        --empty value won't be submitted
        PRIMARY KEY (uID, user_name) --composite key
    );

--create table with default value

CREATE TABLE
    user1 (
        uId SERIAL PRIMARY KEY,
        -- when we set a field to a primary key, this is auto not null.
        user_name VARCHAR(255) UNIQUE NOT NULL,
        --empty value won't be submitted 
        email VARCHAR(255) UNIQUE NOT NULL,
        --empty value won't be submitted
        age int DEFAULT 18
    );

--insert a VALUES

INSERT INTO user1 VALUES(1,'abc','abc@gmail.com ');

--show TABLE

SELECT * FROM user1 

--##Multiple way to insert

-- 1. INSERT INTO table_name(col1,col2,...)

--values(value1,value2,...);

-- If i want to see the immidiate value i inserted, this is just for postgress, Returning * 'id;

--2. INSERT INTO table_Name values(value1,value2,....);

--##insert multiple value ...

--Insert INTO table_name(col1, col2, ...)values(value1,value2,..),(value1,value2,...),(value1,value2,..);

--## alter TABLE

--1.change CONSTRAINTS, drop a column, change datatupeof a column, rename a column,set default values to a column, add constraint/delete constraint.

ALTER Table user1 ADD COLUMN password varchar(255) NOT NULL;

--adding new col name password

-- delete table row without deleting a TABLE

TRUNCATE TABLE user1;

--drop a COLUMN from a TABLE

ALTER Table user1 drop column age;

-- add a COLUMN

ALTER table user1 ADD COLUMN demo int;

--changing the datatable

ALTER Table user1 ALTER COLUMN demo type Float4;

--setting a default value to an existing COLUMN

ALTER Table user1 ALTER COLUMN demo set default 'Bangladesh';

--remove default values to an existing COLUMN

ALTER Table user1 ALTER COLUMN demo drop default;

--rename a COLUMN

ALTER Table user1 RENAME COLUMN demo to 'country';

--this will rename the demon column to country

-- adding a consraint

ALTER table user1 ALTER COLUMN country set NOT NULL;

--set the constraint into not NULL

--drop a constrains,

ALTER table user1 ALTER COLUMN country drop NOT NULL;

--this will delete the constraint

--add constraint except not null to an existing TABLE

ALTER Table user1 ADD Constraint unique_email UNIQUE(email);

--drop constraint except not null to an existing TABLE

ALTER Table user1 DROP Constraint unique_email;

SELECT * from user1 