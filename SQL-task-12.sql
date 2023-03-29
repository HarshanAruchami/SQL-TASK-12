--CREATE DATABASE
create database task12
--USE DATABASE
use task12
--1. Kindly refer the attached image and create the tables and link them accordingly.
--COUNTRY TABLE
create table country(id int primary key, country_name char(128), country_name_eng char(128), country_code char(8))
--SELECT QUERY
select * from country--country table
------------------------------------------------------------------------------
create table city(id int primary key, city_name char(128), lat decimal(9,6), long  decimal(9,6), country_id int references country(id))
--SELECT QUERY
select * from city--city table
------------------------------------------------------------------------------
create table customer(id int primary key, customer_name varchar(255), city_id int references city(id),customer_address varchar(255), next_call_date date not null, ts_inserted datetime)
--SELECT QUERY
select * from customer--customer table
------------------------------------------------------------------------------
create table employee(id int primary key, first_name varchar(255), last_name varchar(255))
--SELECT QUERY
select * from employee--employee table
------------------------------------------------------------------------------
create table call(id int primary key, employee_id int references employee(id), customer_id int references customer(id),start_time datetime,end_time datetime not null,call_outcome_id int references call_outcome(id))
--SELECT QUERY
select * from call--call table
------------------------------------------------------------------------------
create table call_outcome(id int primary key, outcome_text char(128))
--SELECT QUERY
select * from call_outcome--call_outcome table
--2. Create a Database diagram for the created tables.
--REFER THE ATTACHED DOCUMENT FOR THE DATABASE DIAGRAM

