use `ABC Corporation`;


CREATE TABLE employees(
	id           		   INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
	age          		   INT,
    gender 		 	 	   CHAR(10),
    marital_status		   VARCHAR(50)
);
alter table employees
drop column year_birth;
alter table employees modify column employee_number INT NULL;
alter table employees drop column employee_number;
alter table employees modify column marital_status VARCHAR (50) NULL;
alter table employees rename column MyUnknownColumn to id;

CREATE TABLE employee_details(
	employee_number			INT PRIMARY KEY,
    education				INT,
    education_field			VARCHAR(100),
    total_working_years 	INT,
    num_companies_worked	INT
    
);
alter table employee_details CHANGE COLUMN `employee_number` `employee_number` INT PRIMARY KEY;
alter table employee_details modify column `total_working_years` FLOAT;
alter table employee_details add column id INT AUTO_INCREMENT PRIMARY KEY NOT NULL;
alter table employee_details drop column education_field;
alter table employee_details drop column employee_number;
alter table employee_details modify column education INT NOT NULL;
alter table employee_details modify column total_working_years FLOAT NULL;
alter table employee_details modify column num_companies_worked INT NOT NULL;
alter table employee_details rename column MyUnknownColumn to id;

CREATE TABLE company_relationship(
    attrition 			  		     CHAR(10),
    years_at_company      		     INT,
    years_since_last_promotion  	 INT,
    years_with_curr_manager  		 INT

);
alter table company_relationship drop column years_in_current_role;
alter table company_relationship drop column employee_number;
alter table company_relationship add column id INT AUTO_INCREMENT PRIMARY KEY NOT NULL;
alter table company_relationship MODIFY COLUMN attrition CHAR(10) NOT NULL;
alter table company_relationship MODIFY COLUMN years_at_company INT NOT NULL;
alter table company_relationship MODIFY COLUMN years_since_last_promotion INT NOT NULL;
alter table company_relationship MODIFY COLUMN years_with_curr_manager INT NOT NULL;


CREATE TABLE satisfaction(
	environment_satisfaction  INT,
    relationship_satisfaction INT PRIMARY KEY NOT NULL,
    job_satisfaction		  INT,
    job_involvement			  INT,
    work_life_balance 		  INT,
    performance_rating 		  INT

);
alter table satisfaction add column id INT AUTO_INCREMENT  primary key NOT NULL;
alter table satisfaction modify column relationship_satisfaction INT NOT NULL;
alter table satisfaction modify column environment_satisfaction INT NOT NULL;
alter table satisfaction modify column job_satisfaction INT NOT NULL;
alter table satisfaction modify column job_involvement INT NOT NULL;
alter table satisfaction modify column work_life_balance INT NULL;
alter table satisfaction modify column performance_rating INT NULL;
alter table satisfaction rename column MyUnknownColumn to id;


CREATE TABLE job_role(
    department				   VARCHAR(100),
    role_departament		   VARCHAR(100),
    job_role				   VARCHAR(100) PRIMARY KEY NOT NULL,
    job_level				   INT,
    training_times_last_year   INT,
    stock_option_level  	   INT
    
);
alter table job_role DROP column department;
alter table job_role add column id INT AUTO_INCREMENT  primary key NOT NULL;
alter table job_role DROP column role_departament;
alter table job_role modify column job_role VARCHAR(100) NOT NULL;
alter table job_role modify column job_level INT NOT NULL;
alter table job_role modify column job_role INT NOT NULL;
alter table job_role modify column stock_option_level INT NOT NULL;
alter table job_role rename column MyUnknownColumn to id;


CREATE TABLE conditions(
	remote_work        CHAR(10),
    over_time		   CHAR(10),
	business_travel    VARCHAR(100),
    distance_from_home FLOAT

);
alter table conditions drop column business_travel;
alter table conditions drop column over_time;
alter table conditions add column id INT AUTO_INCREMENT  primary key NOT NULL;
alter table conditions rename column MyUnknownColumn to id;


CREATE TABLE salary (
    hourly_rate				 FLOAT,
    daily_rate				 FLOAT,
    monthly_rate			 FLOAT,
    monthly_income			 FLOAT,
	percent_salary_hike  	 FLOAT
    
);
alter table salary drop column monthly_income;
alter table salary add column monthly_rate INT not null;
alter table salary drop column hourly_rate;
alter table salary add column id INT AUTO_INCREMENT  primary key NOT NULL;
alter table salary change column `daily_rate` `hourly_rate` FLOAT NOT NULL;
alter table salary modify column monthly_rate INT NOT NULL;
alter table salary modify column percent_salary_hike INT NOT NULL;

 