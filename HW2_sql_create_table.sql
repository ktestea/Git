/*SQL_DDL_create tables

 * 1.Создать таблицу employees
- id. serial, primary key,
- employee_name. Varchar(50), not null*/

create table employees(
  id serial primary key,
  employee_name varchar(50) not null
);

/*2.Наполнить таблицу employee 70 строками.*/
insert into employees (employee_name)  
values ('Adams'), ('Adderiy'), ('Aldridge'),('Anderson'),('Andrews'),('Austin'),('Backer'),('Baldwin'),('Barnes'),('Barrington'),('Becker'),('Bishop'),('Black'),('Bradberry'),('Brooks'),('Brown'), 
('Butler'),('Campbell'),('Carter'),('Chesterton'),('Coleman'),('Collins'),('Cooper'),('Dalton'),('Day'),('Dickinson'),('Donovan'),('Edwards'),('Ellis'),('Ferguson'),('Fitzgerald'),('Ford'), 
('Foster'),('Gilbert'),('Gilmore'),('Goodman'),('Green'),('Hancock'),('Harris'),('Harrysoln'),('Hill'),('Howard'),('Hughes'),('Jackson'),('Jones'),('Kelly'),('King'),('Lewis'),('Little'), 
('MacDonald'),('Miller'),('Mollygan'),('Nelson'),('Oliver'),('Paterson'),('Phillips'),('Rogers'),('Salomon'),('Scott'),('Sheldon'),('Simpson'),('Smith'),('Taylor'),('Thomas'),('Walker'), 
('Wesley'),('White'),('Williams'),('Wilson'),('Yang');
select * from employees;

/*3.Создать таблицу salary
- id. Serial  primary key,
- monthly_salary. Int, not null*/
create table salary (
id serial primary key,
monthly_salary int not null
);

/*4.Наполнить таблицу salary 15 строками:- 1000 - 1100 - 1200 - 1300 - 1400 - 1500 - 1600 - 1700 - 1800
- 1900 - 2000 - 2100 - 2200 - 2300 - 2400 - 2500 ; плюс 7 строк уже было добавлено в классе*/
insert into salary (monthly_salary)
values (1000),
	   (1100),
	   (1200),
	   (1300),
	   (1400),
	   (1500),
	   (1600),
	   (1700),
	   (1800),
	   (1900),
	   (2000),
	   (2100),
	   (2200),
	   (2300),
	   (2400),
	   (2500);

/*5. Создать таблицу employee_salary
- id. Serial  primary key,
- employee_id. Int, not null, unique
- salary_id. Int, not null*/
create table employee_salary(
id serial primary key,
employee_id int unique not null,
salary_id int not null
);

/*6. Наполнить таблицу employee_salary 40 строками:
- в 10 строк из 40 вставить несуществующие employee_id*/
insert into employee_salary(employee_id, salary_id) 
values (3, 7),
	   (1, 4),
	   (5, 9),
	   (40, 13),
	   (23, 4),
	   (11, 2),
	   (52, 10),
	   (15, 13),
	   (26, 4),
	   (16, 1),
	   (33, 7),
	   (34, 8),
	   (35, 9),
	   (36, 10),
	   (37, 11),
	   (56, 24),
	   (42, 96),
	   (83, 53),
	   (29, 88),
	   (94, 84),
	   (71, 13),
	   (72, 15),
	   (73, 5),
	   (74, 17),
	   (75, 20),
	   (76, 25),
	   (77, 51),
	   (78, 62),
	   (79, 23),
	   (80, 31);

/*7.Создать таблицу roles
- id. Serial  primary key,
- role_name. int, not null, unique*/
create table roles(
id serial primary key,
role_name int unique not null
);

/*8.Поменять тип столбца role_name с int на varchar(30)*/
ALTER TABLE roles 
ALTER COLUMN role_name TYPE varchar(30) USING role_name::varchar(30);




