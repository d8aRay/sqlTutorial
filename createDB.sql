CREATE TABLE `sql_tutorial.regions` (
	region_id INTEGER,
	region_name STRING(25)
);

INSERT INTO `sql_tutorial.regions`(region_id,region_name) VALUES (1,'Europe');
INSERT INTO `sql_tutorial.regions`(region_id,region_name) VALUES (2,'Americas');
INSERT INTO `sql_tutorial.regions`(region_id,region_name) VALUES (3,'Asia');
INSERT INTO `sql_tutorial.regions`(region_id,region_name) VALUES (4,'Middle East and Africa');

CREATE TABLE `sql_tutorial.countries` (
	country_id STRING(2) NOT NULL,
	country_name STRING(40),
	region_id INTEGER NOT NULL,
);

INSERT INTO `sql_tutorial.countries`(country_id,country_name,region_id) VALUES ('AR','Argentina',2);
INSERT INTO `sql_tutorial.countries`(country_id,country_name,region_id) VALUES ('AU','Australia',3);
INSERT INTO `sql_tutorial.countries`(country_id,country_name,region_id) VALUES ('BE','Belgium',1);
INSERT INTO `sql_tutorial.countries`(country_id,country_name,region_id) VALUES ('BR','Brazil',2);
INSERT INTO `sql_tutorial.countries`(country_id,country_name,region_id) VALUES ('CA','Canada',2);
INSERT INTO `sql_tutorial.countries`(country_id,country_name,region_id) VALUES ('CH','Switzerland',1);
INSERT INTO `sql_tutorial.countries`(country_id,country_name,region_id) VALUES ('CN','China',3);
INSERT INTO `sql_tutorial.countries`(country_id,country_name,region_id) VALUES ('DE','Germany',1);
INSERT INTO `sql_tutorial.countries`(country_id,country_name,region_id) VALUES ('DK','Denmark',1);
INSERT INTO `sql_tutorial.countries`(country_id,country_name,region_id) VALUES ('EG','Egypt',4);
INSERT INTO `sql_tutorial.countries`(country_id,country_name,region_id) VALUES ('FR','France',1);
INSERT INTO `sql_tutorial.countries`(country_id,country_name,region_id) VALUES ('HK','HongKong',3);
INSERT INTO `sql_tutorial.countries`(country_id,country_name,region_id) VALUES ('IL','Israel',4);
INSERT INTO `sql_tutorial.countries`(country_id,country_name,region_id) VALUES ('IN','India',3);
INSERT INTO `sql_tutorial.countries`(country_id,country_name,region_id) VALUES ('IT','Italy',1);
INSERT INTO `sql_tutorial.countries`(country_id,country_name,region_id) VALUES ('JP','Japan',3);
INSERT INTO `sql_tutorial.countries`(country_id,country_name,region_id) VALUES ('KW','Kuwait',4);
INSERT INTO `sql_tutorial.countries`(country_id,country_name,region_id) VALUES ('MX','Mexico',2);
INSERT INTO `sql_tutorial.countries`(country_id,country_name,region_id) VALUES ('NG','Nigeria',4);
INSERT INTO `sql_tutorial.countries`(country_id,country_name,region_id) VALUES ('NL','Netherlands',1);
INSERT INTO `sql_tutorial.countries`(country_id,country_name,region_id) VALUES ('SG','Singapore',3);
INSERT INTO `sql_tutorial.countries`(country_id,country_name,region_id) VALUES ('UK','United Kingdom',1);
INSERT INTO `sql_tutorial.countries`(country_id,country_name,region_id) VALUES ('US','United States of America',2);
INSERT INTO `sql_tutorial.countries`(country_id,country_name,region_id) VALUES ('ZM','Zambia',4);
INSERT INTO `sql_tutorial.countries`(country_id,country_name,region_id) VALUES ('ZW','Zimbabwe',4);

CREATE TABLE `sql_tutorial.locations` (
	location_id INTEGER,
	street_address STRING(40),
	postal_code STRING(12),
	city STRING(30) NOT NULL,
	state_province STRING(25),
	country_id STRING(2) NOT NULL,
);
INSERT INTO `sql_tutorial.locations`(location_id,street_address,postal_code,city,state_province,country_id) VALUES (1400,'2014 Jabberwocky Rd','26192','Southlake','Texas','US');
INSERT INTO `sql_tutorial.locations`(location_id,street_address,postal_code,city,state_province,country_id) VALUES (1500,'2011 Interiors Blvd','99236','South San Francisco','California','US');
INSERT INTO `sql_tutorial.locations`(location_id,street_address,postal_code,city,state_province,country_id) VALUES (1700,'2004 Charade Rd','98199','Seattle','Washington','US');
INSERT INTO `sql_tutorial.locations`(location_id,street_address,postal_code,city,state_province,country_id) VALUES (1800,'147 Spadina Ave','M5V 2L7','Toronto','Ontario','CA');
INSERT INTO `sql_tutorial.locations`(location_id,street_address,postal_code,city,state_province,country_id) VALUES (2400,'8204 Arthur St',NULL,'London',NULL,'UK');
INSERT INTO `sql_tutorial.locations`(location_id,street_address,postal_code,city,state_province,country_id) VALUES (2500,'Magdalen Centre, The Oxford Science Park','OX9 9ZB','Oxford','Oxford','UK');
INSERT INTO `sql_tutorial.locations`(location_id,street_address,postal_code,city,state_province,country_id) VALUES (2700,'Schwanthalerstr. 7031','80925','Munich','Bavaria','DE');

CREATE TABLE `sql_tutorial.departments` (
	department_id INTEGER,
	department_name STRING NOT NULL,
	location_id INTEGER,
);

INSERT INTO `sql_tutorial.departments`(department_id,department_name,location_id) VALUES (1,'Administration',1700);
INSERT INTO `sql_tutorial.departments`(department_id,department_name,location_id) VALUES (2,'Marketing',1800);
INSERT INTO `sql_tutorial.departments`(department_id,department_name,location_id) VALUES (3,'Purchasing',1700);
INSERT INTO `sql_tutorial.departments`(department_id,department_name,location_id) VALUES (4,'Human Resources',2400);
INSERT INTO `sql_tutorial.departments`(department_id,department_name,location_id) VALUES (5,'Shipping',1500);
INSERT INTO `sql_tutorial.departments`(department_id,department_name,location_id) VALUES (6,'IT',1400);
INSERT INTO `sql_tutorial.departments`(department_id,department_name,location_id) VALUES (7,'Public Relations',2700);
INSERT INTO `sql_tutorial.departments`(department_id,department_name,location_id) VALUES (8,'Sales',2500);
INSERT INTO `sql_tutorial.departments`(department_id,department_name,location_id) VALUES (9,'Executive',1700);
INSERT INTO `sql_tutorial.departments`(department_id,department_name,location_id) VALUES (10,'Finance',1700);
INSERT INTO `sql_tutorial.departments`(department_id,department_name,location_id) VALUES (11,'Accounting',1700);

CREATE TABLE `sql_tutorial.jobs` (
	job_id INTEGER,
	job_title STRING(35) NOT NULL,
	min_salary NUMERIC(8, 2),
	max_salary NUMERIC(8, 2)
);

INSERT INTO `sql_tutorial.jobs`(job_id,job_title,min_salary,max_salary) VALUES (1,'Public Accountant',4200.00,9000.00);
INSERT INTO `sql_tutorial.jobs`(job_id,job_title,min_salary,max_salary) VALUES (2,'Accounting Manager',8200.00,16000.00);
INSERT INTO `sql_tutorial.jobs`(job_id,job_title,min_salary,max_salary) VALUES (3,'Administration Assistant',3000.00,6000.00);
INSERT INTO `sql_tutorial.jobs`(job_id,job_title,min_salary,max_salary) VALUES (4,'President',20000.00,40000.00);
INSERT INTO `sql_tutorial.jobs`(job_id,job_title,min_salary,max_salary) VALUES (5,'Administration Vice President',15000.00,30000.00);
INSERT INTO `sql_tutorial.jobs`(job_id,job_title,min_salary,max_salary) VALUES (6,'Accountant',4200.00,9000.00);
INSERT INTO `sql_tutorial.jobs`(job_id,job_title,min_salary,max_salary) VALUES (7,'Finance Manager',8200.00,16000.00);
INSERT INTO `sql_tutorial.jobs`(job_id,job_title,min_salary,max_salary) VALUES (8,'Human Resources Representative',4000.00,9000.00);
INSERT INTO `sql_tutorial.jobs`(job_id,job_title,min_salary,max_salary) VALUES (9,'Programmer',4000.00,10000.00);
INSERT INTO `sql_tutorial.jobs`(job_id,job_title,min_salary,max_salary) VALUES (10,'Marketing Manager',9000.00,15000.00);
INSERT INTO `sql_tutorial.jobs`(job_id,job_title,min_salary,max_salary) VALUES (11,'Marketing Representative',4000.00,9000.00);
INSERT INTO `sql_tutorial.jobs`(job_id,job_title,min_salary,max_salary) VALUES (12,'Public Relations Representative',4500.00,10500.00);
INSERT INTO `sql_tutorial.jobs`(job_id,job_title,min_salary,max_salary) VALUES (13,'Purchasing Clerk',2500.00,5500.00);
INSERT INTO `sql_tutorial.jobs`(job_id,job_title,min_salary,max_salary) VALUES (14,'Purchasing Manager',8000.00,15000.00);
INSERT INTO `sql_tutorial.jobs`(job_id,job_title,min_salary,max_salary) VALUES (15,'Sales Manager',10000.00,20000.00);
INSERT INTO `sql_tutorial.jobs`(job_id,job_title,min_salary,max_salary) VALUES (16,'Sales Representative',6000.00,12000.00);
INSERT INTO `sql_tutorial.jobs`(job_id,job_title,min_salary,max_salary) VALUES (17,'Shipping Clerk',2500.00,5500.00);
INSERT INTO `sql_tutorial.jobs`(job_id,job_title,min_salary,max_salary) VALUES (18,'Stock Clerk',2000.00,5000.00);
INSERT INTO `sql_tutorial.jobs`(job_id,job_title,min_salary,max_salary) VALUES (19,'Stock Manager',5500.00,8500.00);

CREATE TABLE `sql_tutorial.employees` (
	employee_id INTEGER,
	first_name STRING(20),
	last_name STRING(25) NOT NULL,
	email STRING(100) NOT NULL,
	phone_number STRING(20),
	hire_date DATE NOT NULL,
	job_id INTEGER NOT NULL,
	salary NUMERIC(8, 2) NOT NULL,
	manager_id INTEGER,
	department_id INTEGER,
);

INSERT INTO `sql_tutorial.employees`(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (100,'Steven','King','steven.king@sqltutorial.org','515.123.4567','1987-06-17',4,240000.00,NULL,9);
INSERT INTO `sql_tutorial.employees`(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (101,'Neena','Kochhar','neena.kochhar@sqltutorial.org','515.123.4568','1989-09-21',5,170000.00,100,9);
INSERT INTO `sql_tutorial.employees`(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (102,'Lex','De Haan','lex.de haan@sqltutorial.org','515.123.4569','1993-01-13',5,170000.00,100,9);
INSERT INTO `sql_tutorial.employees`(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (103,'Alexander','Hunold','alexander.hunold@sqltutorial.org','590.423.4567','1990-01-03',9,90000.00,102,6);
INSERT INTO `sql_tutorial.employees`(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (104,'Bruce','Ernst','bruce.ernst@sqltutorial.org','590.423.4568','1991-05-21',9,60000.00,103,6);
INSERT INTO `sql_tutorial.employees`(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (105,'David','Austin','david.austin@sqltutorial.org','590.423.4569','1997-06-25',9,48000.00,103,6);
INSERT INTO `sql_tutorial.employees`(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (106,'Valli','Pataballa','valli.pataballa@sqltutorial.org','590.423.4560','1998-02-05',9,48000.00,103,6);
INSERT INTO `sql_tutorial.employees`(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (107,'Diana','Lorentz','diana.lorentz@sqltutorial.org','590.423.5567','1999-02-07',9,42000.00,103,6);
INSERT INTO `sql_tutorial.employees`(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (108,'Nancy','Greenberg','nancy.greenberg@sqltutorial.org','515.124.4569','1994-08-17',7,120000.00,101,10);
INSERT INTO `sql_tutorial.employees`(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (109,'Daniel','Faviet','daniel.faviet@sqltutorial.org','515.124.4169','1994-08-16',6,90000.00,108,10);
INSERT INTO `sql_tutorial.employees`(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (110,'John','Chen','john.chen@sqltutorial.org','515.124.4269','1997-09-28',6,82000.00,108,10);
INSERT INTO `sql_tutorial.employees`(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (111,'Ismael','Sciarra','ismael.sciarra@sqltutorial.org','515.124.4369','1997-09-30',6,77000.00,108,10);
INSERT INTO `sql_tutorial.employees`(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (112,'Jose Manuel','Urman','jose manuel.urman@sqltutorial.org','515.124.4469','1998-03-07',6,78000.00,108,10);
INSERT INTO `sql_tutorial.employees`(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (113,'Luis','Popp','luis.popp@sqltutorial.org','515.124.4567','1999-12-07',6,69000.00,108,10);
INSERT INTO `sql_tutorial.employees`(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (114,'Den','Raphaely','den.raphaely@sqltutorial.org','515.127.4561','1994-12-07',14,110000.00,100,3);
INSERT INTO `sql_tutorial.employees`(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (115,'Alexander','Khoo','alexander.khoo@sqltutorial.org','515.127.4562','1995-05-18',13,31000.00,114,3);
INSERT INTO `sql_tutorial.employees`(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (116,'Shelli','Baida','shelli.baida@sqltutorial.org','515.127.4563','1997-12-24',13,29000.00,114,3);
INSERT INTO `sql_tutorial.employees`(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (117,'Sigal','Tobias','sigal.tobias@sqltutorial.org','515.127.4564','1997-07-24',13,28000.00,114,3);
INSERT INTO `sql_tutorial.employees`(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (118,'Guy','Himuro','guy.himuro@sqltutorial.org','515.127.4565','1998-11-15',13,26000.00,114,3);
INSERT INTO `sql_tutorial.employees`(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (119,'Karen','Colmenares','karen.colmenares@sqltutorial.org','515.127.4566','1999-08-10',13,25000.00,114,3);
INSERT INTO `sql_tutorial.employees`(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (120,'Matthew','Weiss','matthew.weiss@sqltutorial.org','650.123.1234','1996-07-18',19,80000.00,100,5);
INSERT INTO `sql_tutorial.employees`(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (121,'Adam','Fripp','adam.fripp@sqltutorial.org','650.123.2234','1997-04-10',19,82000.00,100,5);
INSERT INTO `sql_tutorial.employees`(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (122,'Payam','Kaufling','payam.kaufling@sqltutorial.org','650.123.3234','1995-05-01',19,79000.00,100,5);
INSERT INTO `sql_tutorial.employees`(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (123,'Shanta','Vollman','shanta.vollman@sqltutorial.org','650.123.4234','1997-10-10',19,65000.00,100,5);
INSERT INTO `sql_tutorial.employees`(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (126,'Irene','Mikkilineni','irene.mikkilineni@sqltutorial.org','650.124.1224','1998-09-28',18,27000.00,120,5);
INSERT INTO `sql_tutorial.employees`(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (145,'John','Russell','john.russell@sqltutorial.org',NULL,'1996-10-01',15,140000.00,100,8);
INSERT INTO `sql_tutorial.employees`(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (146,'Karen','Partners','karen.partners@sqltutorial.org',NULL,'1997-01-05',15,135000.00,100,8);
INSERT INTO `sql_tutorial.employees`(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (176,'Jonathon','Taylor','jonathon.taylor@sqltutorial.org',NULL,'1998-03-24',16,86000.00,100,8);
INSERT INTO `sql_tutorial.employees`(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (177,'Jack','Livingston','jack.livingston@sqltutorial.org',NULL,'1998-04-23',16,84000.00,100,8);
INSERT INTO `sql_tutorial.employees`(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (178,'Kimberely','Grant','kimberely.grant@sqltutorial.org',NULL,'1999-05-24',16,70000.00,100,8);
INSERT INTO `sql_tutorial.employees`(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (179,'Charles','Johnson','charles.johnson@sqltutorial.org',NULL,'2000-01-04',16,62000.00,100,8);
INSERT INTO `sql_tutorial.employees`(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (192,'Sarah','Bell','sarah.bell@sqltutorial.org','650.501.1876','1996-02-04',17,40000.00,123,5);
INSERT INTO `sql_tutorial.employees`(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (193,'Britney','Everett','britney.everett@sqltutorial.org','650.501.2876','1997-03-03',17,39000.00,123,5);
INSERT INTO `sql_tutorial.employees`(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (200,'Jennifer','Whalen','jennifer.whalen@sqltutorial.org','515.123.4444','1987-09-17',3,44000.00,101,1);
INSERT INTO `sql_tutorial.employees`(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (201,'Michael','Hartstein','michael.hartstein@sqltutorial.org','515.123.5555','1996-02-17',10,130000.00,100,2);
INSERT INTO `sql_tutorial.employees`(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (202,'Pat','Fay','pat.fay@sqltutorial.org','603.123.6666','1997-08-17',11,60000.00,201,2);
INSERT INTO `sql_tutorial.employees`(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (203,'Susan','Mavris','susan.mavris@sqltutorial.org','515.123.7777','1994-06-07',8,65000.00,101,4);
INSERT INTO `sql_tutorial.employees`(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (204,'Hermann','Baer','hermann.baer@sqltutorial.org','515.123.8888','1994-06-07',12,100000.00,101,7);
INSERT INTO `sql_tutorial.employees`(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (205,'Shelley','Higgins','shelley.higgins@sqltutorial.org','515.123.8080','1994-06-07',2,120000.00,101,11);
INSERT INTO `sql_tutorial.employees`(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (206,'William','Gietz','william.gietz@sqltutorial.org','515.123.8181','1994-06-07',1,83000.00,205,11);


CREATE TABLE `sql_tutorial.dependents` (
	dependent_id INTEGER,
	first_name STRING(50) NOT NULL,
	last_name STRING(50) NOT NULL,
	relationship STRING(25) NOT NULL,
	employee_id INTEGER NOT NULL,
);


INSERT INTO `sql_tutorial.dependents`(dependent_id,first_name,last_name,relationship,employee_id) VALUES (1,'Penelope','Gietz','Child',206);
INSERT INTO `sql_tutorial.dependents`(dependent_id,first_name,last_name,relationship,employee_id) VALUES (2,'Nick','Higgins','Child',205);
INSERT INTO `sql_tutorial.dependents`(dependent_id,first_name,last_name,relationship,employee_id) VALUES (3,'Ed','Whalen','Child',200);
INSERT INTO `sql_tutorial.dependents`(dependent_id,first_name,last_name,relationship,employee_id) VALUES (4,'Jennifer','King','Child',100);
INSERT INTO `sql_tutorial.dependents`(dependent_id,first_name,last_name,relationship,employee_id) VALUES (5,'Johnny','Kochhar','Child',101);
INSERT INTO `sql_tutorial.dependents`(dependent_id,first_name,last_name,relationship,employee_id) VALUES (6,'Bette','De Haan','Child',102);
INSERT INTO `sql_tutorial.dependents`(dependent_id,first_name,last_name,relationship,employee_id) VALUES (7,'Grace','Faviet','Child',109);
INSERT INTO `sql_tutorial.dependents`(dependent_id,first_name,last_name,relationship,employee_id) VALUES (8,'Matthew','Chen','Child',110);
INSERT INTO `sql_tutorial.dependents`(dependent_id,first_name,last_name,relationship,employee_id) VALUES (9,'Joe','Sciarra','Child',111);
INSERT INTO `sql_tutorial.dependents`(dependent_id,first_name,last_name,relationship,employee_id) VALUES (10,'Christian','Urman','Child',112);
INSERT INTO `sql_tutorial.dependents`(dependent_id,first_name,last_name,relationship,employee_id) VALUES (11,'Zero','Popp','Child',113);
INSERT INTO `sql_tutorial.dependents`(dependent_id,first_name,last_name,relationship,employee_id) VALUES (12,'Karl','Greenberg','Child',108);
INSERT INTO `sql_tutorial.dependents`(dependent_id,first_name,last_name,relationship,employee_id) VALUES (13,'Uma','Mavris','Child',203);
INSERT INTO `sql_tutorial.dependents`(dependent_id,first_name,last_name,relationship,employee_id) VALUES (14,'Vivien','Hunold','Child',103);
INSERT INTO `sql_tutorial.dependents`(dependent_id,first_name,last_name,relationship,employee_id) VALUES (15,'Cuba','Ernst','Child',104);
INSERT INTO `sql_tutorial.dependents`(dependent_id,first_name,last_name,relationship,employee_id) VALUES (16,'Fred','Austin','Child',105);
INSERT INTO `sql_tutorial.dependents`(dependent_id,first_name,last_name,relationship,employee_id) VALUES (17,'Helen','Pataballa','Child',106);
INSERT INTO `sql_tutorial.dependents`(dependent_id,first_name,last_name,relationship,employee_id) VALUES (18,'Dan','Lorentz','Child',107);
INSERT INTO `sql_tutorial.dependents`(dependent_id,first_name,last_name,relationship,employee_id) VALUES (19,'Bob','Hartstein','Child',201);
INSERT INTO `sql_tutorial.dependents`(dependent_id,first_name,last_name,relationship,employee_id) VALUES (20,'Lucille','Fay','Child',202);
INSERT INTO `sql_tutorial.dependents`(dependent_id,first_name,last_name,relationship,employee_id) VALUES (21,'Kirsten','Baer','Child',204);
INSERT INTO `sql_tutorial.dependents`(dependent_id,first_name,last_name,relationship,employee_id) VALUES (22,'Elvis','Khoo','Child',115);
INSERT INTO `sql_tutorial.dependents`(dependent_id,first_name,last_name,relationship,employee_id) VALUES (23,'Sandra','Baida','Child',116);
INSERT INTO `sql_tutorial.dependents`(dependent_id,first_name,last_name,relationship,employee_id) VALUES (24,'Cameron','Tobias','Child',117);
INSERT INTO `sql_tutorial.dependents`(dependent_id,first_name,last_name,relationship,employee_id) VALUES (25,'Kevin','Himuro','Child',118);
INSERT INTO `sql_tutorial.dependents`(dependent_id,first_name,last_name,relationship,employee_id) VALUES (26,'Rip','Colmenares','Child',119);
INSERT INTO `sql_tutorial.dependents`(dependent_id,first_name,last_name,relationship,employee_id) VALUES (27,'Julia','Raphaely','Child',114);
INSERT INTO `sql_tutorial.dependents`(dependent_id,first_name,last_name,relationship,employee_id) VALUES (28,'Woody','Russell','Child',145);
INSERT INTO `sql_tutorial.dependents`(dependent_id,first_name,last_name,relationship,employee_id) VALUES (29,'Alec','Partners','Child',146);
INSERT INTO `sql_tutorial.dependents`(dependent_id,first_name,last_name,relationship,employee_id) VALUES (30,'Sandra','Taylor','Child',176);

CREATE TABLE `sql_tutorial.clients_campaigns` (
	client_id STRING(12) NOT NULL,
	campaign_id STRING(15),
);

INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_4','Campaign_1');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_7','Campaign_2');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_3','Campaign_3');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_6','Campaign_4');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_2','Campaign_5');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_5','Campaign_6');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_1','Campaign_7');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_4','Campaign_8');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_7','Campaign_9');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_3','Campaign_10');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_6','Campaign_11');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_2','Campaign_12');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_5','Campaign_13');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_1','Campaign_14');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_4','Campaign_15');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_7','Campaign_16');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_3','Campaign_17');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_6','Campaign_18');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_2','Campaign_19');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_5','Campaign_20');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_1','Campaign_21');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_4','Campaign_22');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_7','Campaign_23');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_3','Campaign_24');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_6','Campaign_25');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_2','Campaign_26');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_5','Campaign_27');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_1','Campaign_28');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_4','Campaign_29');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_7','Campaign_30');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_3','Campaign_31');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_6','Campaign_32');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_2','Campaign_33');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_5','Campaign_34');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_1','Campaign_35');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_4','Campaign_36');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_7','Campaign_37');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_3','Campaign_38');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_6','Campaign_39');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_2','Campaign_40');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_5','Campaign_41');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_1','Campaign_42');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_4','Campaign_43');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_7','Campaign_44');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_3','Campaign_45');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_6','Campaign_46');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_2','Campaign_47');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_5','Campaign_48');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_1','Campaign_49');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_4','Campaign_50');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_7','Campaign_51');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_3','Campaign_52');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_6','Campaign_53');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_2','Campaign_54');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_5','Campaign_55');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_1','Campaign_56');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_4','Campaign_57');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_7','Campaign_58');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_3','Campaign_59');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_6','Campaign_60');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_2','Campaign_61');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_5','Campaign_62');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_1','Campaign_63');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_4','Campaign_64');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_7','Campaign_65');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_3','Campaign_66');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_6','Campaign_67');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_2','Campaign_68');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_5','Campaign_69');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_1','Campaign_70');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_4','Campaign_71');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_7','Campaign_72');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_3','Campaign_73');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_6','Campaign_74');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_2','Campaign_75');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_5','Campaign_76');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_1','Campaign_77');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_4','Campaign_78');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_7','Campaign_79');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_3','Campaign_80');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_6','Campaign_81');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_2','Campaign_82');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_5','Campaign_83');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_1','Campaign_84');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_4','Campaign_85');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_7','Campaign_86');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_3','Campaign_87');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_6','Campaign_88');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_2','Campaign_89');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_5','Campaign_90');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_1','Campaign_91');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_4','Campaign_92');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_7','Campaign_93');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_3','Campaign_94');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_6','Campaign_95');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_2','Campaign_96');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_5','Campaign_97');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_1','Campaign_98');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_4','Campaign_99');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_7','Campaign_100');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_3','Campaign_101');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_6','Campaign_102');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_2','Campaign_103');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_5','Campaign_104');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_1','Campaign_105');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_4','Campaign_106');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_7','Campaign_107');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_3','Campaign_108');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_6','Campaign_109');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_2','Campaign_110');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_5','Campaign_111');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_1','Campaign_112');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_4','Campaign_113');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_7','Campaign_114');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_3','Campaign_115');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_6','Campaign_116');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_2','Campaign_117');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_5','Campaign_118');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_1','Campaign_119');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_4','Campaign_120');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_7','Campaign_121');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_3','Campaign_122');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_6','Campaign_123');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_2','Campaign_124');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_5','Campaign_125');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_1','Campaign_126');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_4','Campaign_127');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_7','Campaign_128');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_3','Campaign_129');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_6','Campaign_130');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_2','Campaign_131');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_5','Campaign_132');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_1','Campaign_133');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_4','Campaign_134');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_7','Campaign_135');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_3','Campaign_136');
INSERT INTO `sql_tutorial.clients_campaigns`(client_id,campaign_id) VALUES ('Client_6','Campaign_137');

CREATE TABLE `sql_tutorial.campaign_sales` (
	campaign_id STRING(15) not null,
    sales INTEGER
);

INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_1',6135794);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_2',3693298);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_3',5785009);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_4',1621997);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_5',737696);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_6',3666953);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_7',5307594);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_8',627264);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_9',2248172);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_10',8755807);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_11',5544914);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_12',7069856);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_13',1);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_14',8176548);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_15',2914264);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_16',1657512);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_17',6982907);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_18',5070378);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_19',2023126);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_20',8015943);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_21',8618125);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_22',6533320);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_23',3979499);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_24',8733654);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_25',8005243);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_26',1138345);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_27',1839748);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_28',4583311);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_29',1386767);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_30',1940291);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_31',3202183);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_32',2788167);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_33',3662414);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_34',1843516);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_35',1450714);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_36',2309971);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_37',8115370);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_38',38440);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_39',3571557);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_40',5291057);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_41',4986463);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_42',6085001);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_43',4002105);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_44',6250579);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_45',6912485);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_46',3991569);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_47',5374444);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_48',8483578);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_49',2851395);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_50',7814617);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_51',6075530);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_52',4866366);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_53',4879803);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_54',4887456);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_55',3261872);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_56',5932900);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_57',167079);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_58',4775595);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_59',3338649);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_60',7654181);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_61',5505661);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_62',7451810);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_63',5941492);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_64',2826341);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_65',5008509);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_66',2985732);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_67',4143744);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_68',6352984);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_69',6972441);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_70',1250815);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_71',6952822);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_72',8993447);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_73',1449954);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_74',4765767);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_75',3156388);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_76',3341075);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_77',8772368);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_78',5808041);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_79', NULL);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_80',8232344);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_81',1894187);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_82',7123556);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_83',6363770);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_84',4346236);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_85',1087338);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_86',6276258);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_87',5311496);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_88',2425492);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_89',2061571);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_90',4771855);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_91',6476319);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_92',4921961);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_93',1769787);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_94',149739);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_95',4836623);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_96',2152555);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_97',736938);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_98',5313829);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_99',2217243);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_100',7042383);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_101',5424683);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_102',4761472);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_103',1260997);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_104',8685532);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_105',3686230);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_106',7193941);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_107',5334727);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_108',385807);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_109',6239520);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_110',5977909);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_111',6296520);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_112',3742965);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_113',7435501);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_114',6033738);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_115',5727539);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_116',4909618);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_117',6853143);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_118',989118);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_119',314883);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_120',5359789);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_121',5413971);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_122',3855534);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_123',561181);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_124',4382134);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_125',776292);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_126',3060213);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_127',3892098);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_128',6039222);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_129',6742886);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_130',5397711);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_131',2534730);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_132',8518789);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_133',1295859);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_134',4352899);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_135',6247843);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_136',643729);
INSERT INTO `sql_tutorial.campaign_sales`(campaign_id, sales) VALUES ('Campaign_137',7658470);
