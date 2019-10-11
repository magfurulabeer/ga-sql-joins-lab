#!/bin/sh

#Write select queries for each of the following:

#Employees working at Macy's: The full names of employees working at Macy's.
SELECT CONCAT(e.first_name, ' ', e.last_name) full_name, j.company     
FROM employees e
JOIN jobs j
ON e.ssn = j.ssn
WHERE j.company LIKE 'Macy%';

#Companies in Boston: The companies located in Boston.
SELECT j.company, e.city     
FROM employees e
JOIN jobs j
ON e.ssn = j.ssn
WHERE e.city LIKE 'Boston';

#Employee with the highest salary: The full name of the employee with the highest salary.
SELECT CONCAT(e.first_name, ' ', e.last_name) full_name, j.company, j.salary    
FROM employees e
JOIN jobs j
ON e.ssn = j.ssn
ORDER BY j.salary DESC
LIMIT 1;