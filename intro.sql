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

--change CONSTRAINTS