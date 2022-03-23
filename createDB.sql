CREATE TABLE `sql_tutorial.regions` (
	region_id INTEGER,
	region_name STRING(25)
);

INSERT INTO `sql_tutorial.regions`(region_id,region_name) VALUES  
  (1,'Europe')
, (2,'Americas')
, (3,'Asia')
, (4,'Middle East and Africa')
;

CREATE TABLE `sql_tutorial.countries` (
	country_id STRING(2) NOT NULL,
	country_name STRING(40),
	region_id INTEGER NOT NULL,
);

INSERT INTO `sql_tutorial.countries`(country_id,country_name,region_id) VALUES 
  ('AR','Argentina',2)
, ('AU','Australia',3)
, ('BE','Belgium',1)
, ('BR','Brazil',2)
, ('CA','Canada',2)
, ('CH','Switzerland',1)
, ('CN','China',3)
, ('DE','Germany',1)
, ('DK','Denmark',1)
, ('EG','Egypt',4)
, ('FR','France',1)
, ('HK','HongKong',3)
, ('IL','Israel',4)
, ('IN','India',3)
, ('IT','Italy',1)
, ('JP','Japan',3)
, ('KW','Kuwait',4)
, ('MX','Mexico',2)
, ('NG','Nigeria',4)
, ('NL','Netherlands',1)
, ('SG','Singapore',3)
, ('UK','United Kingdom',1)
, ('US','United States of America',2)
, ('ZM','Zambia',4)
, ('ZW','Zimbabwe',4)
;

CREATE TABLE `sql_tutorial.locations` (
	location_id INTEGER,
	street_address STRING(40),
	postal_code STRING(12),
	city STRING(30) NOT NULL,
	state_province STRING(25),
	country_id STRING(2) NOT NULL,
);
INSERT INTO `sql_tutorial.locations`(location_id,street_address,postal_code,city,state_province,country_id) VALUES 
 (1400,'2014 Jabberwocky Rd','26192','Southlake','Texas','US')
,(1500,'2011 Interiors Blvd','99236','South San Francisco','California','US')
,(1700,'2004 Charade Rd','98199','Seattle','Washington','US')
,(1800,'147 Spadina Ave','M5V 2L7','Toronto','Ontario','CA')
,(2400,'8204 Arthur St',NULL,'London',NULL,'UK')
,(2500,'Magdalen Centre, The Oxford Science Park','OX9 9ZB','Oxford','Oxford','UK')
,(2700,'Schwanthalerstr. 7031','80925','Munich','Bavaria','DE')

CREATE TABLE `sql_tutorial.departments` (
	department_id INTEGER,
	department_name STRING NOT NULL,
	location_id INTEGER,
);

INSERT INTO `sql_tutorial.departments`(department_id,department_name,location_id) VALUES 
  (1,'Administration',1700)
, (2,'Marketing',1800)
, (3,'Purchasing',1700)
, (4,'Human Resources',2400)
, (5,'Shipping',1500)
, (6,'IT',1400)
, (7,'Public Relations',2700)
, (8,'Sales',2500)
, (9,'Executive',1700)
, (10,'Finance',1700)
, (11,'Accounting',1700)
;

CREATE TABLE `sql_tutorial.jobs` (
	job_id INTEGER,
	job_title STRING(35) NOT NULL,
	min_salary NUMERIC(8, 2),
	max_salary NUMERIC(8, 2)
);

INSERT INTO `sql_tutorial.jobs`(job_id,job_title,min_salary,max_salary) VALUES 
  (1,'Public Accountant',4200.00,9000.00)
, (2,'Accounting Manager',8200.00,16000.00)
, (3,'Administration Assistant',3000.00,6000.00)
, (4,'President',20000.00,40000.00)
, (5,'Administration Vice President',15000.00,30000.00)
, (6,'Accountant',4200.00,9000.00)
, (7,'Finance Manager',8200.00,16000.00)
, (8,'Human Resources Representative',4000.00,9000.00)
, (9,'Programmer',4000.00,10000.00)
, (10,'Marketing Manager',9000.00,15000.00)
, (11,'Marketing Representative',4000.00,9000.00)
, (12,'Public Relations Representative',4500.00,10500.00)
, (13,'Purchasing Clerk',2500.00,5500.00)
, (14,'Purchasing Manager',8000.00,15000.00)
, (15,'Sales Manager',10000.00,20000.00)
, (16,'Sales Representative',6000.00,12000.00)
, (17,'Shipping Clerk',2500.00,5500.00)
, (18,'Stock Clerk',2000.00,5000.00)
, (19,'Stock Manager',5500.00,8500.00)
;

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

CREATE TABLE `sql_tutorial.user_purchases` (
	user_id STRING(10) not null,
    purchase_date date
);

INSERT INTO `sql_tutorial.user_purchases`(user_id,purchase_date) VALUES
('User_20','2021-01-13')
,('User_9','2019-06-29')
,('User_62','2020-06-12')
,('User_60','2020-02-04')
,('User_97','2020-10-31')
,('User_68','2022-01-12')
,('User_86','2020-08-26')
,('User_29','2021-06-12')
,('User_95','2019-04-07')
,('User_96','2020-12-07')
,('User_21','2019-07-23')
,('User_56','2021-04-28')
,('User_71','2020-08-12')
,('User_67','2020-02-16')
,('User_27','2019-11-10')
,('User_70','2021-02-09')
,('User_79','2021-09-01')
,('User_30','2021-10-05')
,('User_80','2022-12-05')
,('User_34','2019-07-18')
,('User_25','2020-07-03')
,('User_97','2020-02-06')
,('User_2','2021-07-15')
,('User_3','2022-09-10')
,('User_63','2022-02-13')
,('User_54','2020-03-07')
,('User_51','2021-09-25')
,('User_37','2021-02-09')
,('User_33','2021-03-18')
,('User_19','2019-04-02')
,('User_29','2019-07-24')
,('User_22','2021-01-29')
,('User_98','2019-04-28')
,('User_71','2019-12-24')
,('User_70','2019-10-25')
,('User_10','2022-10-18')
,('User_12','2020-07-05')
,('User_34','2022-08-15')
,('User_70','2021-07-10')
,('User_30','2021-09-22')
,('User_9','2022-10-08')
,('User_51','2020-07-01')
,('User_25','2020-06-23')
,('User_85','2021-06-28')
,('User_99','2021-09-18')
,('User_25','2019-07-29')
,('User_71','2020-12-24')
,('User_71','2020-03-18')
,('User_14','2020-05-11')
,('User_81','2022-06-02')
,('User_27','2022-11-19')
,('User_69','2022-10-12')
,('User_34','2022-04-05')
,('User_43','2019-06-18')
,('User_69','2019-11-29')
,('User_52','2019-02-20')
,('User_16','2022-12-12')
,('User_92','2020-03-04')
,('User_65','2019-08-16')
,('User_98','2021-08-03')
,('User_24','2022-04-06')
,('User_25','2021-10-09')
,('User_69','2021-06-23')
,('User_54','2020-01-04')
,('User_46','2022-01-23')
,('User_44','2020-11-30')
,('User_43','2019-12-06')
,('User_19','2020-12-09')
,('User_92','2021-09-28')
,('User_95','2021-02-19')
,('User_73','2022-02-04')
,('User_90','2020-09-19')
,('User_55','2022-02-07')
,('User_66','2022-11-25')
,('User_13','2020-01-24')
,('User_35','2020-02-04')
,('User_3','2020-05-04')
,('User_93','2020-08-01')
,('User_98','2020-10-17')
,('User_59','2022-04-25')
,('User_2','2021-04-01')
,('User_67','2019-03-25')
,('User_38','2019-06-07')
,('User_3','2020-01-30')
,('User_43','2022-03-29')
,('User_35','2019-06-14')
,('User_23','2020-11-27')
,('User_6','2021-08-19')
,('User_83','2020-05-05')
,('User_73','2021-10-05')
,('User_44','2021-11-07')
,('User_68','2019-11-12')
,('User_98','2022-02-03')
,('User_89','2019-04-25')
,('User_51','2020-02-09')
,('User_82','2019-07-01')
,('User_83','2020-01-20')
,('User_51','2021-03-06')
,('User_63','2022-08-09')
,('User_97','2021-03-24')
,('User_34','2020-09-14')
,('User_35','2020-05-11')
,('User_74','2021-10-22')
,('User_64','2019-02-03')
,('User_71','2019-07-09')
,('User_37','2019-12-31')
,('User_62','2022-09-09')
,('User_25','2021-07-14')
,('User_3','2020-03-31')
,('User_23','2021-07-30')
,('User_84','2021-12-01')
,('User_93','2022-02-19')
,('User_43','2022-10-28')
,('User_67','2020-07-10')
,('User_7','2020-11-04')
,('User_25','2022-07-05')
,('User_9','2021-10-04')
,('User_73','2019-02-16')
,('User_59','2022-01-01')
,('User_18','2019-07-22')
,('User_6','2020-06-19')
,('User_72','2022-07-12')
,('User_28','2022-11-02')
,('User_89','2020-02-29')
,('User_5','2020-09-14')
,('User_65','2022-05-08')
,('User_18','2020-11-05')
,('User_70','2022-03-21')
,('User_49','2022-03-11')
,('User_10','2022-08-19')
,('User_58','2020-07-22')
,('User_48','2022-01-16')
,('User_29','2021-05-09')
,('User_3','2019-09-24')
,('User_32','2021-06-06')
,('User_97','2022-06-10')
,('User_30','2022-05-14')
,('User_28','2020-03-26')
,('User_78','2022-05-18')
,('User_97','2022-11-19')
,('User_76','2019-10-02')
,('User_77','2020-04-01')
,('User_27','2019-05-06')
,('User_38','2021-11-09')
,('User_2','2020-03-28')
,('User_72','2019-11-22')
,('User_86','2021-05-20')
,('User_83','2022-11-11')
,('User_64','2022-01-16')
,('User_43','2020-07-12')
,('User_24','2019-08-27')
,('User_18','2022-05-03')
,('User_42','2022-04-08')
,('User_100','2021-01-11')
,('User_73','2020-11-20')
,('User_87','2021-07-25')
,('User_67','2021-12-02')
,('User_87','2021-02-05')
,('User_87','2022-03-31')
,('User_80','2021-07-12')
,('User_52','2022-11-09')
,('User_75','2022-11-27')
,('User_76','2021-10-29')
,('User_95','2021-10-24')
,('User_91','2021-12-06')
,('User_57','2020-03-26')
,('User_86','2020-08-18')
,('User_1','2019-10-05')
,('User_48','2020-09-23')
,('User_13','2021-09-01')
,('User_34','2021-07-03')
,('User_48','2022-07-01')
,('User_37','2020-06-27')
,('User_77','2022-09-30')
,('User_7','2020-04-07')
,('User_53','2021-10-28')
,('User_74','2021-03-12')
,('User_37','2021-06-13')
,('User_75','2022-03-29')
,('User_16','2020-07-11')
,('User_68','2019-03-26')
,('User_65','2022-01-31')
,('User_37','2019-05-20')
,('User_5','2022-05-29')
,('User_76','2019-08-14')
,('User_62','2022-05-05')
,('User_8','2021-05-17')
,('User_21','2019-02-05')
,('User_74','2022-08-16')
,('User_30','2019-03-04')
,('User_23','2020-05-04')
,('User_72','2020-09-13')
,('User_46','2022-04-17')
,('User_95','2021-03-08')
,('User_96','2019-03-28')
,('User_35','2020-05-07')
,('User_15','2022-06-23')
,('User_27','2022-05-06')
,('User_95','2020-07-18')
,('User_66','2022-12-03')
,('User_21','2022-01-18')
,('User_44','2022-01-07')
,('User_30','2022-06-30')
,('User_94','2021-08-11')
,('User_58','2021-03-02')
,('User_75','2021-10-26')
,('User_76','2020-11-22')
,('User_3','2020-04-14')
,('User_76','2022-10-26')
,('User_56','2022-02-20')
,('User_38','2021-06-23')
,('User_21','2019-04-30')
,('User_70','2020-05-17')
,('User_75','2021-01-09')
,('User_33','2022-10-29')
,('User_64','2019-03-11')
,('User_74','2020-06-11')
,('User_34','2020-07-31')
,('User_3','2020-12-10')
,('User_56','2021-11-05')
,('User_13','2019-01-14')
,('User_98','2020-03-28')
,('User_45','2021-12-17')
,('User_24','2021-02-21')
,('User_40','2019-12-23')
,('User_9','2020-12-24')
,('User_55','2020-10-31')
,('User_15','2021-03-10')
,('User_55','2021-04-23')
,('User_8','2020-11-25')
,('User_92','2019-05-03')
,('User_86','2019-02-20')
,('User_78','2022-10-05')
,('User_52','2021-09-09')
,('User_79','2020-07-02')
,('User_46','2022-12-06')
,('User_2','2020-04-27')
,('User_52','2019-12-22')
,('User_75','2020-04-02')
,('User_94','2022-02-09')
,('User_64','2021-07-15')
,('User_64','2019-01-03')
,('User_48','2020-12-20')
,('User_47','2022-05-11')
,('User_8','2020-06-15')
,('User_32','2020-10-13')
,('User_37','2019-10-25')
,('User_14','2020-01-24')
,('User_55','2022-11-05')
,('User_78','2022-06-13')
,('User_66','2020-09-06')
,('User_55','2020-01-18')
,('User_14','2021-12-14')
,('User_31','2019-09-13')
,('User_49','2019-01-19')
,('User_87','2019-08-11')
,('User_20','2021-01-03')
,('User_54','2021-12-10')
,('User_3','2021-04-23')
,('User_36','2022-12-16')
,('User_35','2020-07-25')
,('User_76','2021-01-17')
,('User_66','2020-10-05')
,('User_17','2020-06-13')
,('User_74','2020-12-02')
,('User_59','2019-10-24')
,('User_20','2021-02-09')
,('User_25','2022-03-29')
,('User_87','2020-01-26')
,('User_42','2021-08-27')
,('User_68','2019-01-11')
,('User_38','2020-07-03')
,('User_69','2019-12-17')
,('User_60','2021-06-26')
,('User_51','2022-05-10')
,('User_4','2019-11-09')
,('User_24','2020-05-16')
,('User_41','2019-06-07')
,('User_56','2021-06-07')
,('User_68','2022-05-03')
,('User_85','2020-03-26')
,('User_65','2019-10-08')
,('User_74','2020-05-02')
,('User_4','2021-03-07')
,('User_29','2020-12-28')
,('User_43','2021-04-28')
,('User_61','2019-12-22')
,('User_54','2022-06-12')
,('User_6','2019-06-24')
,('User_5','2020-08-13')
,('User_81','2022-06-19')
,('User_78','2019-09-15')
,('User_77','2020-08-30')
,('User_30','2019-02-12')
,('User_72','2019-10-01')
,('User_57','2022-03-05')
,('User_92','2021-10-30')
,('User_29','2019-04-12')
,('User_51','2019-01-06')
,('User_93','2020-12-28')
,('User_72','2022-11-10')
,('User_78','2022-05-20')
,('User_11','2019-05-12')
,('User_36','2019-10-02')
,('User_68','2022-10-06')
,('User_62','2020-09-07')
,('User_62','2019-12-17')
,('User_6','2022-01-08')
,('User_9','2021-12-16')
,('User_11','2019-01-20')
,('User_3','2022-02-01')
,('User_34','2020-03-20')
,('User_99','2019-06-18')
,('User_42','2019-01-03')
,('User_13','2021-06-26')
,('User_54','2019-01-25')
,('User_27','2021-11-15')
,('User_80','2022-12-04')
,('User_14','2021-11-06')
,('User_64','2020-10-17')
,('User_30','2022-11-11')
,('User_39','2020-03-31')
,('User_31','2022-08-25')
,('User_56','2022-04-02')
,('User_59','2019-11-06')
,('User_59','2020-07-23')
,('User_66','2020-12-15')
,('User_51','2022-05-28')
,('User_84','2020-08-30')
,('User_33','2020-10-10')
,('User_91','2021-09-23')
,('User_10','2019-11-28')
,('User_71','2021-03-24')
,('User_66','2022-12-05')
,('User_41','2021-08-31')
,('User_94','2022-11-30')
,('User_71','2021-07-22')
,('User_78','2019-09-05')
,('User_80','2022-10-01')
,('User_36','2020-11-19')
,('User_72','2019-12-22')
,('User_33','2020-03-09')
,('User_38','2022-07-29')
,('User_29','2020-10-16')
,('User_52','2019-12-10')
,('User_4','2019-10-29')
,('User_57','2019-09-26')
,('User_97','2019-12-23')
,('User_27','2020-08-23')
,('User_5','2019-01-06')
,('User_48','2019-11-08')
,('User_22','2022-10-28')
,('User_35','2021-05-19')
,('User_24','2021-07-20')
,('User_18','2019-03-08')
,('User_94','2020-07-19')
,('User_94','2022-08-27')
,('User_32','2022-11-06')
,('User_56','2022-05-01')
,('User_24','2022-06-20')
,('User_24','2022-02-09')
,('User_46','2021-10-26')
,('User_68','2022-04-03')
,('User_21','2021-07-28')
,('User_90','2020-07-23')
,('User_80','2020-06-17')
,('User_84','2022-06-15')
,('User_56','2020-07-25')
,('User_41','2020-10-10')
,('User_12','2020-10-11')
,('User_29','2021-04-08')
,('User_36','2021-02-23')
,('User_34','2019-02-15')
,('User_85','2021-03-21')
,('User_41','2022-02-21')
,('User_22','2020-12-30')
,('User_88','2021-10-12')
,('User_9','2022-08-11')
,('User_64','2021-12-02')
,('User_59','2021-09-17')
,('User_39','2022-12-15')
,('User_13','2020-06-20')
,('User_39','2021-07-15')
,('User_52','2022-12-12')
,('User_10','2022-05-25')
,('User_29','2022-07-07')
,('User_94','2019-10-25')
,('User_28','2019-01-04')
,('User_41','2021-06-12')
,('User_17','2019-05-22')
,('User_92','2019-09-09')
,('User_31','2020-05-24')
,('User_97','2020-12-25')
,('User_65','2020-10-16')
,('User_28','2020-10-17')
,('User_64','2022-01-13')
,('User_91','2022-10-30')
,('User_91','2020-09-20')
,('User_2','2021-02-24')
,('User_67','2020-07-08')
,('User_30','2020-07-19')
,('User_86','2021-11-01')
,('User_29','2019-08-02')
,('User_19','2020-01-13')
,('User_48','2020-01-18')
,('User_57','2022-10-17')
,('User_7','2019-07-24')
,('User_2','2021-08-02')
,('User_35','2022-12-02')
,('User_8','2020-12-30')
,('User_1','2020-04-12')
,('User_22','2021-09-20')
,('User_46','2020-04-19')
,('User_58','2019-03-07')
,('User_50','2022-02-24')
,('User_69','2020-01-19')
,('User_37','2021-10-11')
,('User_67','2019-03-04')
,('User_70','2019-03-02')
,('User_37','2020-11-15')
,('User_31','2022-11-25')
,('User_19','2020-06-01')
,('User_71','2020-04-10')
,('User_45','2021-05-28')
,('User_9','2019-11-14')
,('User_57','2021-12-23')
,('User_70','2019-06-07')
,('User_3','2019-05-31')
,('User_77','2019-05-12')
,('User_6','2019-03-04')
,('User_53','2019-11-29')
,('User_63','2022-07-15')
,('User_45','2020-08-01')
,('User_92','2021-07-06')
,('User_84','2020-03-24')
,('User_15','2020-02-16')
,('User_38','2022-05-02')
,('User_13','2021-03-26')
,('User_69','2019-03-11')
,('User_75','2022-02-08')
,('User_31','2021-03-29')
,('User_99','2019-06-06')
,('User_93','2019-08-29')
,('User_70','2022-03-07')
,('User_2','2019-04-10')
,('User_22','2021-09-21')
,('User_7','2020-12-12')
,('User_79','2020-09-16')
,('User_75','2020-04-16')
,('User_54','2019-05-20')
,('User_25','2020-02-29')
,('User_90','2021-07-17')
,('User_27','2019-07-06')
,('User_48','2022-12-08')
,('User_70','2021-04-29')
,('User_55','2021-05-16')
,('User_17','2019-09-29')
,('User_25','2021-08-07')
,('User_12','2021-10-27')
,('User_85','2019-06-22')
,('User_6','2020-08-02')
,('User_49','2019-03-02')
,('User_80','2020-06-03')
,('User_76','2022-01-25')
,('User_44','2021-01-17')
,('User_70','2021-07-27')
,('User_5','2022-02-16')
,('User_29','2019-03-26')
,('User_75','2020-07-07')
,('User_59','2022-12-08')
,('User_36','2022-01-16')
,('User_74','2020-11-14')
,('User_69','2021-09-19')
,('User_14','2019-08-31')
,('User_94','2021-09-13')
,('User_61','2020-02-08')
,('User_53','2019-10-30')
,('User_95','2020-01-06')
,('User_99','2022-07-09')
,('User_3','2019-06-03')
,('User_56','2020-12-19')
,('User_2','2021-08-20')
,('User_32','2020-06-22')
,('User_27','2022-12-05')
,('User_3','2022-02-07')
,('User_14','2021-08-09')
,('User_2','2021-08-24')
,('User_5','2019-04-17')
,('User_91','2019-08-07')
,('User_4','2022-11-06')
,('User_69','2021-11-20')
,('User_26','2022-03-30')
,('User_31','2022-10-18')
,('User_54','2019-02-06')
,('User_28','2021-09-28')
,('User_78','2022-12-15')
,('User_45','2020-06-06')
,('User_4','2022-03-01')
,('User_45','2019-07-25')
,('User_36','2021-03-19')
,('User_65','2021-01-30')
,('User_59','2019-10-19')
,('User_74','2021-11-07')
,('User_12','2019-12-07')
,('User_71','2020-07-11')
,('User_20','2020-05-01')
,('User_88','2022-01-12')
,('User_23','2022-06-07')
,('User_96','2022-07-12')
,('User_84','2022-12-21')
,('User_8','2019-02-01')
,('User_27','2019-10-24')
,('User_21','2019-06-28')
,('User_28','2022-10-25')
,('User_19','2019-12-21')
,('User_62','2020-10-21')
,('User_53','2021-05-01')
,('User_38','2020-08-26')
,('User_4','2022-03-01')
,('User_40','2022-10-06')
,('User_1','2021-01-31')
,('User_81','2019-12-02')
,('User_74','2021-07-04')
,('User_21','2021-08-09')
,('User_56','2019-11-21')
,('User_88','2020-07-28')
,('User_80','2019-02-07')
,('User_38','2019-03-04')
,('User_73','2022-06-14')
,('User_55','2022-02-10')
,('User_73','2022-02-04')
,('User_94','2019-11-04')
,('User_70','2020-06-22')
,('User_53','2021-08-13')
,('User_91','2022-02-18')
,('User_42','2019-01-19')
,('User_79','2022-03-10')
,('User_59','2021-06-16')
,('User_10','2020-06-15')
,('User_73','2022-02-19')
,('User_44','2020-10-19')
,('User_54','2021-03-03')
,('User_61','2021-11-04')
,('User_77','2020-11-16')
,('User_68','2019-07-27')
,('User_94','2019-01-02')
,('User_43','2021-02-21')
,('User_6','2021-03-02')
,('User_19','2022-03-07')
,('User_96','2022-10-16')
,('User_40','2019-07-05')
,('User_95','2022-06-17')
,('User_23','2022-02-14')
,('User_38','2019-01-19')
,('User_4','2021-03-19')
,('User_73','2021-11-22')
,('User_32','2020-02-16')
,('User_1','2021-07-22')
,('User_21','2019-09-22')
,('User_13','2021-07-15')
,('User_19','2019-11-29')
,('User_3','2020-03-12')
,('User_61','2019-07-07')
,('User_83','2019-08-28')
,('User_54','2020-02-07')
,('User_19','2021-07-01')
,('User_64','2022-04-07')
,('User_54','2022-09-06')
,('User_84','2021-09-11')
,('User_99','2022-01-01')
,('User_97','2020-02-24')
,('User_67','2019-04-24')
,('User_35','2022-03-09')
,('User_83','2020-07-05')
,('User_2','2021-03-31')
,('User_15','2020-03-09')
,('User_33','2021-04-29')
,('User_72','2019-04-01')
,('User_97','2022-07-26')
,('User_25','2021-07-19')
,('User_51','2019-06-22')
,('User_85','2019-02-17')
,('User_36','2020-07-24')
,('User_95','2019-08-05')
,('User_73','2019-07-21')
,('User_24','2020-07-24')
,('User_49','2019-11-14')
,('User_57','2019-06-28')
,('User_63','2019-11-25')
,('User_97','2022-07-17')
,('User_32','2019-08-22')
,('User_54','2021-06-08')
,('User_36','2019-08-03')
,('User_32','2021-06-06')
,('User_6','2019-10-13')
,('User_73','2021-10-15')
,('User_46','2022-04-30')
,('User_49','2022-04-09')
,('User_82','2020-07-15')
,('User_92','2019-12-02')
,('User_71','2019-08-18')
,('User_18','2022-05-25')
,('User_62','2019-11-04')
,('User_68','2019-04-13')
,('User_51','2022-08-08')
,('User_50','2020-11-15')
,('User_97','2020-05-10')
,('User_68','2022-02-16')
,('User_89','2022-08-29')
,('User_30','2020-05-11')
,('User_40','2021-04-28')
,('User_14','2021-05-24')
,('User_85','2022-05-17')
,('User_18','2020-01-28')
,('User_36','2022-01-15')
,('User_88','2022-05-27')
,('User_70','2020-09-27')
,('User_48','2021-11-16')
,('User_92','2019-05-19')
,('User_100','2021-06-04')
,('User_46','2022-06-19')
,('User_32','2021-09-18')
,('User_98','2021-07-05')
,('User_47','2019-07-19')
,('User_55','2020-02-09')
,('User_24','2020-05-14')
,('User_67','2019-12-20')
,('User_10','2022-10-30')
,('User_42','2019-06-29')
,('User_51','2019-11-27')
,('User_18','2022-03-24')
,('User_98','2021-07-02')
,('User_88','2022-04-22')
,('User_11','2020-01-28')
,('User_90','2019-01-11')
,('User_44','2019-09-05')
,('User_70','2021-08-02')
,('User_44','2019-10-13')
,('User_62','2021-02-20')
,('User_74','2019-02-07')
,('User_81','2021-08-23')
,('User_47','2022-09-10')
,('User_51','2020-06-14')
,('User_1','2021-05-27')
,('User_52','2019-11-23')
,('User_32','2019-04-01')
,('User_90','2019-01-19')
,('User_2','2019-08-10')
,('User_17','2020-03-23')
,('User_1','2021-07-28')
,('User_26','2022-05-12')
,('User_90','2020-12-21')
,('User_35','2021-09-14')
,('User_37','2019-02-06')
,('User_50','2021-06-06')
,('User_77','2019-07-26')
,('User_21','2022-10-29')
,('User_89','2021-05-14')
,('User_39','2022-03-12')
,('User_34','2022-09-02')
,('User_15','2019-11-26')
,('User_81','2019-11-26')
,('User_23','2020-08-30')
,('User_78','2021-10-05')
,('User_46','2022-11-21')
,('User_22','2022-01-03')
,('User_61','2020-02-19')
,('User_88','2022-07-27')
,('User_42','2022-07-24')
,('User_1','2021-01-21')
,('User_10','2019-10-12')
,('User_56','2021-10-12')
,('User_73','2019-11-21')
,('User_50','2022-12-06')
,('User_11','2021-05-25')
,('User_72','2019-11-15')
,('User_8','2019-05-24')
,('User_41','2022-05-25')
,('User_55','2022-09-01')
,('User_21','2022-11-25')
,('User_14','2021-05-03')
,('User_95','2020-05-27')
,('User_85','2022-11-09')
,('User_11','2022-04-03')
,('User_26','2022-11-21')
,('User_66','2021-09-24')
,('User_30','2020-10-06')
,('User_7','2022-12-04')
,('User_62','2019-09-16')
,('User_12','2019-11-18')
,('User_39','2022-07-29')
,('User_19','2021-05-09')
,('User_67','2022-11-05')
,('User_99','2022-09-22')
,('User_46','2019-04-19')
,('User_97','2021-08-10')
,('User_40','2019-07-15')
,('User_3','2022-04-01')
,('User_3','2019-09-24')
,('User_65','2019-07-12')
,('User_89','2022-01-28')
,('User_60','2020-06-26')
,('User_35','2019-01-05')
,('User_24','2022-04-15')
,('User_30','2022-12-06')
,('User_78','2019-11-17')
,('User_4','2021-06-07')
,('User_28','2022-01-16')
,('User_89','2022-01-29')
,('User_91','2021-04-18')
,('User_33','2022-06-25')
,('User_94','2022-05-27')
,('User_87','2022-10-30')
,('User_40','2019-05-07')
,('User_6','2022-01-01')
,('User_3','2021-10-28')
,('User_72','2020-06-03')
,('User_68','2021-10-25')
,('User_80','2022-12-12')
,('User_99','2020-07-08')
,('User_80','2022-03-17')
,('User_33','2020-09-30')
,('User_25','2021-02-28')
,('User_34','2020-11-28')
,('User_91','2022-08-02')
,('User_39','2022-03-13')
,('User_81','2022-10-07')
,('User_97','2020-07-01')
,('User_96','2022-07-05')
,('User_93','2020-06-13')
,('User_63','2020-09-13')
,('User_84','2021-09-28')
,('User_27','2020-01-28')
,('User_55','2020-06-23')
,('User_3','2021-06-05')
,('User_98','2022-06-16')
,('User_19','2021-08-09')
,('User_72','2021-03-24')
,('User_49','2020-02-12')
,('User_57','2022-06-15')
,('User_96','2019-07-11')
,('User_62','2020-09-01')
,('User_27','2022-03-08')
,('User_66','2019-02-22')
,('User_55','2022-07-07')
,('User_32','2022-08-17')
,('User_17','2020-09-28')
,('User_41','2019-04-13')
,('User_18','2020-08-04')
,('User_86','2019-11-17')
,('User_54','2019-04-19')
,('User_42','2021-06-02')
,('User_64','2019-02-20')
,('User_47','2021-06-23')
,('User_42','2020-11-17')
,('User_38','2020-03-20')
,('User_71','2021-05-15')
,('User_25','2020-11-29')
,('User_35','2020-12-14')
,('User_39','2021-05-30')
,('User_43','2022-04-25')
,('User_28','2021-06-03')
,('User_2','2021-06-17')
,('User_91','2019-02-11')
,('User_21','2019-02-19')
,('User_18','2021-09-21')
,('User_90','2019-10-16')
,('User_56','2019-01-15')
,('User_40','2022-06-08')
,('User_85','2019-05-15')
,('User_55','2022-09-24')
,('User_41','2020-04-15')
,('User_98','2019-02-28')
,('User_74','2022-02-02')
,('User_25','2020-02-14')
,('User_32','2022-07-18')
,('User_7','2021-11-17')
,('User_79','2021-10-04')
,('User_48','2021-07-02')
,('User_50','2020-11-08')
,('User_65','2021-05-01')
,('User_79','2020-12-08')
,('User_58','2019-11-07')
,('User_23','2022-08-11')
,('User_36','2019-07-26')
,('User_26','2020-07-11')
,('User_84','2019-06-23')
,('User_91','2022-11-06')
,('User_96','2019-06-08')
,('User_91','2022-08-27')
,('User_27','2022-01-23')
,('User_72','2020-10-22')
,('User_10','2022-11-01')
,('User_71','2019-08-23')
,('User_24','2022-02-16')
,('User_95','2020-05-09')
,('User_57','2020-09-26')
,('User_20','2019-11-07')
,('User_27','2020-05-08')
,('User_11','2021-12-06')
,('User_74','2022-12-29')
,('User_24','2020-02-25')
,('User_1','2020-09-18')
,('User_80','2019-09-19')
,('User_66','2022-10-10')
,('User_39','2020-11-23')
,('User_5','2022-11-16')
,('User_18','2020-11-11')
,('User_17','2019-09-22')
,('User_39','2020-07-30')
,('User_64','2022-11-21')
,('User_32','2020-01-04')
,('User_58','2020-12-22')
,('User_67','2019-08-27')
,('User_17','2021-03-01')
,('User_5','2019-09-12')
,('User_11','2020-09-03')
,('User_75','2022-08-04')
,('User_89','2022-06-13')
,('User_98','2021-11-29')
,('User_4','2022-01-03')
,('User_38','2021-10-17')
,('User_5','2022-09-07')
,('User_24','2019-08-19')
,('User_48','2019-06-12')
,('User_69','2020-10-23')
,('User_24','2019-09-20')
,('User_9','2022-01-30')
,('User_42','2022-07-03')
,('User_28','2019-02-06')
,('User_77','2019-03-05')
,('User_7','2021-05-19')
,('User_67','2020-04-17')
,('User_10','2020-09-08')
,('User_40','2021-02-12')
,('User_47','2019-03-30')
,('User_26','2022-01-12')
,('User_19','2020-02-07')
,('User_72','2019-10-23')
,('User_85','2020-09-12')
,('User_74','2022-10-15')
,('User_95','2021-04-13')
,('User_29','2019-05-21')
,('User_30','2019-01-16')
,('User_100','2020-01-03')
,('User_11','2022-07-02')
,('User_58','2019-02-19')
,('User_45','2022-08-22')
,('User_90','2020-08-26')
,('User_5','2020-11-21')
,('User_58','2021-01-01')
,('User_70','2021-11-24')
,('User_57','2019-04-24')
,('User_14','2021-09-18')
,('User_94','2022-11-08')
,('User_24','2019-03-30')
,('User_77','2022-02-25')
,('User_38','2020-05-19')
,('User_56','2020-05-07')
,('User_25','2022-12-02')
,('User_32','2020-06-16')
,('User_92','2022-12-19')
,('User_38','2019-06-13')
,('User_47','2020-03-28')
,('User_32','2020-03-05')
,('User_69','2020-02-16')
,('User_28','2021-01-13')
,('User_65','2022-01-23')
,('User_43','2022-12-21')
,('User_23','2021-04-21')
,('User_13','2022-08-27')
,('User_63','2019-06-11')
,('User_47','2021-05-18')
,('User_46','2019-06-16')
,('User_92','2022-01-10')
,('User_10','2019-09-04')
,('User_85','2019-10-22')
,('User_2','2022-12-02')
,('User_33','2022-10-26')
,('User_28','2020-06-23')
,('User_76','2020-07-29')
,('User_36','2020-06-14')
,('User_92','2022-12-26')
,('User_16','2021-07-16')
,('User_25','2019-07-28')
,('User_17','2022-03-16')
,('User_63','2022-02-18')
,('User_41','2022-06-07')
,('User_57','2019-09-22')
,('User_67','2019-01-31')
,('User_39','2020-05-30')
,('User_9','2022-08-03')
,('User_77','2020-04-16')
,('User_54','2021-11-15')
,('User_71','2021-10-18')
,('User_40','2019-02-26')
,('User_72','2019-08-31')
,('User_44','2019-06-13')
,('User_81','2019-01-18')
,('User_7','2019-05-28')
,('User_28','2019-07-02')
,('User_20','2020-08-03')
,('User_80','2022-01-22')
,('User_5','2022-10-04')
,('User_63','2021-12-30')
,('User_29','2020-02-12')
,('User_95','2020-02-10')
,('User_68','2022-08-29')
,('User_64','2022-06-04')
,('User_91','2021-06-22')
,('User_49','2021-03-27')
,('User_31','2019-01-12')
,('User_16','2019-04-11')
,('User_19','2022-05-26')
,('User_64','2020-10-26')
,('User_56','2021-08-24')
,('User_15','2019-01-04')
,('User_24','2019-11-18')
,('User_26','2020-08-29')
,('User_55','2019-05-12')
,('User_87','2020-10-22')
,('User_53','2019-06-24')
,('User_75','2020-10-09')
,('User_22','2022-01-06')
,('User_1','2021-08-04')
,('User_83','2021-10-27')
,('User_48','2019-08-09')
,('User_74','2022-10-25')
,('User_42','2022-05-13')
,('User_35','2022-03-27')
,('User_52','2019-08-31')
,('User_27','2022-11-14')
,('User_66','2019-11-28')
,('User_83','2021-06-15')
,('User_100','2021-03-03')
,('User_66','2019-01-20')
,('User_22','2020-12-23')
,('User_64','2022-09-28')
,('User_13','2019-11-18')
,('User_65','2020-05-14')
,('User_34','2019-04-25')
,('User_33','2019-01-09')
,('User_39','2019-03-18')
,('User_5','2019-08-28')
,('User_63','2021-03-21')
,('User_91','2021-03-25')
,('User_11','2020-06-18')
,('User_65','2021-12-17')
,('User_8','2020-11-11')
,('User_44','2021-08-05')
,('User_56','2021-03-23')
,('User_49','2022-07-19')
,('User_25','2020-01-29')
,('User_53','2019-06-22')
,('User_1','2021-12-21')
,('User_66','2020-06-04')
,('User_99','2019-02-14')
,('User_37','2022-01-21')
,('User_34','2019-04-28')
,('User_19','2019-03-01')
,('User_19','2022-10-31')
,('User_59','2020-06-21')
,('User_39','2022-10-07')
,('User_10','2021-10-20')
,('User_75','2022-05-18')
,('User_53','2020-09-17')
,('User_6','2022-03-10')
,('User_9','2022-12-15')
,('User_29','2019-02-09')
,('User_20','2019-04-25')
,('User_12','2020-03-19')
,('User_87','2022-05-24')
,('User_46','2021-02-06')
,('User_59','2022-11-13')
,('User_46','2022-02-28')
,('User_92','2022-12-08')
,('User_71','2021-05-25')
,('User_48','2019-02-08')
,('User_48','2019-05-01')
,('User_33','2022-12-30')
,('User_28','2019-05-18')
,('User_99','2022-11-03')
,('User_35','2020-05-02')
,('User_26','2022-11-04')
,('User_37','2021-05-03')
,('User_73','2022-11-15')
,('User_59','2020-05-25')
,('User_55','2021-06-07')
,('User_65','2021-01-21')
,('User_48','2021-09-25')
,('User_82','2021-10-18')
,('User_50','2019-08-13')
,('User_10','2019-12-18')
,('User_42','2021-04-27')
,('User_12','2022-01-16')
,('User_50','2021-08-09')
,('User_88','2019-06-20')
,('User_34','2019-05-24')
,('User_96','2021-12-11')
,('User_38','2019-10-12')
;

CREATE TABLE `sql_tutorial.calendar` (
	date DATE
    , week_start DATE
    , day_of_week INTEGER
    , week_end DATE  
    , next_week_start DATE
    , month_start DATE
    , day_of_month INTEGER
    , month_end DATE
    , next_month_start DATE 
    , month_yymm STRING(5)
    , quarter STRING(10)
    , month INTEGER
    , year INTEGER 
);
INSERT `sql_tutorial.calendar`(date, week_start, day_of_week, week_end, next_week_start, month_start, day_of_month, month_end, next_month_start, month_yymm, quarter,month, year)
WITH

date_spine AS (
  





with rawdata as (

    

    

    with p as (
        select 0 as generated_number union all select 1
    ), unioned as (

    select

    
    p0.generated_number * power(2, 0)
     + 
    
    p1.generated_number * power(2, 1)
     + 
    
    p2.generated_number * power(2, 2)
     + 
    
    p3.generated_number * power(2, 3)
     + 
    
    p4.generated_number * power(2, 4)
     + 
    
    p5.generated_number * power(2, 5)
     + 
    
    p6.generated_number * power(2, 6)
     + 
    
    p7.generated_number * power(2, 7)
     + 
    
    p8.generated_number * power(2, 8)
     + 
    
    p9.generated_number * power(2, 9)
     + 
    
    p10.generated_number * power(2, 10)
     + 
    
    p11.generated_number * power(2, 11)
     + 
    
    p12.generated_number * power(2, 12)
     + 
    
    p13.generated_number * power(2, 13)
    
    
    + 1
    as generated_number

    from

    
    p as p0
     cross join 
    
    p as p1
     cross join 
    
    p as p2
     cross join 
    
    p as p3
     cross join 
    
    p as p4
     cross join 
    
    p as p5
     cross join 
    
    p as p6
     cross join 
    
    p as p7
     cross join 
    
    p as p8
     cross join 
    
    p as p9
     cross join 
    
    p as p10
     cross join 
    
    p as p11
     cross join 
    
    p as p12
     cross join 
    
    p as p13
    
    

    )

    select *
    from unioned
    where generated_number <= 10299
    order by generated_number



),

all_periods as (

    select (
        

        datetime_add(
            cast( DATETIME(PARSE_DATE('%d/%m/%Y','01/01/2014')) as datetime),
        interval row_number() over (order by 1) - 1 day
        )


    ) as date_day
    from rawdata

),

filtered as (

    select *
    from all_periods
    where date_day <= DATETIME(DATE_ADD(CURRENT_DATE, INTERVAL 20 year))

)

select * from filtered


)

SELECT
    DATE(date_day) AS date
  , DATE_TRUNC(DATE(date_day), WEEK(MONDAY)) AS week_start
    -- shift from Sunday start to Monday start
  , CASE EXTRACT(DAYOFWEEK FROM date_day)
      WHEN 1
        THEN 7
      ELSE EXTRACT(DAYOFWEEK FROM date_day) - 1
      END
    AS day_of_week
  , DATE_ADD(DATE_TRUNC(DATE(date_day), WEEK(MONDAY)), INTERVAL 6 day) AS week_end
  , DATE_ADD(DATE_TRUNC(DATE(date_day), WEEK(MONDAY)), INTERVAL 7 day) AS next_week_start
  , DATE_TRUNC(DATE(date_day), MONTH) AS month_start
  , EXTRACT(DAY FROM date_day) AS day_of_month
  , DATE_SUB(DATE_TRUNC(DATE_ADD(DATE(date_day), INTERVAL 1 MONTH), MONTH), INTERVAL 1 DAY) AS month_end
  , DATE_TRUNC(DATE_ADD(DATE(date_day), INTERVAL 1 MONTH), MONTH) AS next_month_start
  , FORMAT_DATE("%y/%m", DATE(date_day)) AS month_yymm
  , EXTRACT(year from DATE(date_day)) || " - Q" || EXTRACT(quarter from DATE(date_day)) as quarter
  , EXTRACT(month from DATE(date_day)) as month
  , EXTRACT(year from DATE(date_day)) as year
FROM date_spine

