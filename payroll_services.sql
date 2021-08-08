CREATE DATABASE payroll_service;
USE payroll_service;
CREATE TABLE employee_payroll( Id INT NOT NULL AUTO_INCREMENT,
			Name VARCHAR(15) NOT NULL, 
            Gender CHAR(1),
            salary Decimal(10, 2) Null,
            START  Date NOT NULL,
            primary key (id));
            
SELECT * FROM employee_payroll;
ALTER TABLE payroll_service.employee_payroll CHANGE START start date;
INSERT INTO payroll_service.employee_payroll 
(name, salary, gender, start) 
VALUES ('Shardul', 10000.12, 'M', '2021-01-01');
INSERT INTO payroll_service.employee_payroll 
(name, salary, Gender, start) 
VALUES ('Ashwini', 20000.12, 'F', '2021-02-02');
INSERT INTO payroll_service.employee_payroll 
(name, salary, Gender, start)
 VALUES ('Naveen', 30000.12, 'M', '2021-03-03');
SELECT `salary` from employee_payroll where `Name` = 'Naveen';
DESCRIBE payroll_service.employee_payroll;
SELECT * FROM payroll_service.employee_payroll;
SELECT * FROM payroll_service.employee_payroll  
WHERE start BETWEEN CAST('2021-06-13' AS DATE) AND DATE (NOW());
UPDATE payroll_service.employee_payroll 
SET Gender = 'M' WHERE name = 'Ashwini';
UPDATE payroll_service.employee_payroll 
SET salary = 15000.00 WHERE Name = 'Ashwini';
SELECT SUM(salary) 
FROM payroll_service.employee_payroll
WHERE Gender = 'M' GROUP BY Gender;
SELECT AVG(salary) 
FROM payroll_service.employee_payroll 
WHERE Gender = 'F' GROUP BY Gender;
SELECT MIN(salary) 
FROM payroll_service.employee_payroll
WHERE Gender = 'M' GROUP BY Gender;
SELECT MAX(salary) FROM payroll_service.employee_payroll WHERE Gender = 'M' GROUP BY Gender;
SELECT COUNT(id) AS numberOfEmployees FROM payroll_service.employee_payroll;
ALTER TABLE employee_payroll ADD Phone_Number VARCHAR(250) AFTER Name;
ALTER TABLE employee_payroll ADD Address VARCHAR(250) AFTER Phone_Number;
ALTER TABLE employee_payroll ADD Department VARCHAR(250) AFTER Address;
ALTER TABLE employee_payroll CHANGE Phone_Number Phone_Number VARCHAR(10);
ALTER TABLE `employee_payroll` change  Department  Department VARCHAR(250) NOT NULL ;
ALTER TABLE `employee_payroll`  change  Department  Department VARCHAR(250) NOT NULL DEFAULT 'T&D' ;
describe employee_payroll;
ALTER TABLE `employee_payroll`  change  salary  BasicPay decimal(10, 2) ;
ALTER TABLE employee_payroll ADD Deductions decimal(10, 2) AFTER BasicPay;
ALTER TABLE employee_payroll ADD TaxablePay decimal(10, 2) AFTER Deductions;
ALTER TABLE employee_payroll ADD incometax decimal(10, 2) AFTER Taxablepay;
ALTER TABLE employee_payroll ADD NetPay decimal(10, 2) AFTER Incometax;
ALTER TABLE employee_payroll ADD City decimal(10, 2) AFTER start;
ALTER TABLE employee_payroll ADD Country decimal(10, 2) AFTER City;
ALTER TABLE `employee_payroll` change  start  StartDate DATE NOT NULL ;