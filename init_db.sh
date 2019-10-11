#!/bin/sh

CREATE TABLE employees (
  ssn VARCHAR(50) PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	year_of_birth int NOT NULL,
	city VARCHAR(50) NOT NULL,
);

CREATE TABLE jobs (                                                   
  ssn varchar(50) NOT NULL,
  company varchar(50) NOT NULL,
  salary int NOT NULL,
  experience int NOT NULL,
  FOREIGN KEY (ssn) REFERENCES employees(ssn)
);


COPY employees FROM '/Users/magfurulabeer/Desktop/ga-sql-joins-lab/employees.csv' DELIMITER ',' CSV;

COPY jobs FROM '/Users/magfurulabeer/Desktop/ga-sql-joins-lab/jobs.csv' DELIMITER ',' CSV;