-- Start mysql
mysql -u root

-- Select database
USE employees

--Insert at least 15 new employees
INSERT INTO employees VALUES
(1, "1989-12-23", "Raul", "Catedra", "M", "2005-08-15"),
(2, "1994-01-25", "Veronica", "Velazquez", "F", "2008-10-15"),
(3, "1990-10-29", "Irati", "Arrieta", "F", "2007-08-23"),
(4, "1993-12-29", "Jose", "Serralvo", "M", "2006-05-18"),
(5, "1995-05-25", "Mike", "Garcia", "M", "2009-03-30"),
(6, "1990-07-12", "Veronica", "Garcia", "F", "2008-01-22"),
(7, "1980-07-22", "Raul", "Martinez", "M", "2004-05-16"),
(8, "1986-04-15", "Raul", "Garcia", "M", "2006-07-12"),
(9, "1991-03-04", "Vanesa", "Martos", "F", "2008-09-19"),
(10, "1992-10-17", "Manolo", "Manola", "M", "2019-04-07"),
(11, "1993-06-24", "Juana", "Joya", "F", "2015-09-22"),
(12, "1973-12-06", "Patrocinio", "Patruyero", "M", "2020-12-16"),
(13, "1996-08-17", "Manuela", "Catuta", "F", "2012-05-16"),
(14, "1996-02-29", "Juanito", "Pitoche", "M", "2010-11-22"),
(15, "1731-01-01", "Julia", "Pistacho", "F", "2016-05-31");

--With salaries that are between a range of 5,000 and 50,000 of different gender 5 employees must have at least two salaries in different ranges of dates and different amounts, At least 3 employees have the same name
INSERT INTO salaries VALUES
(1, "15000", "2005-08-15", "2010-08-15"),
(1, "45000", "20010-08-15", now()),
(2, "15000", "2008-10-15", "2013-10-15"),
(2, "45000", "20013-10-15", now()),
(3, "15000", "2007-08-23", "2012-08-23"),
(3, "45000", "2012-08-23", now()),
(4, "15000", "2006-05-18", "2011-05-18"),
(4, "45000", "2011-05-18", now()),
(5, "15000", "2009-03-30", "2014-03-30"),
(5, "45000", "2014-03-30", now()),
(6, "16000", "2008-01-22", now()),
(7, "17000", "2004-05-16", now()),
(8, "18000", "2006-07-12", now()),
(9, "19000", "2008-09-19", now()),
(10, "20000", "2019-04-07", now()),
(11, "21000", "2015-09-22", now()),
(12, "22000", "2020-12-16", now()),
(13, "23000", "2012-05-16", now()),
(14, "24000", "2010-11-22", now()),
(15, "25000", "2016-05-31", now());

INSERT INTO departments VALUES
("BY", "Adquisisions"),
("SLS", "Sales"),
("MNG", "Management"),
("CNS", "Constrution"),
("DST", "Destruccion");

--10 employees belong to more than one department
INSERT INTO dept_emp VALUES
(1, "BY", "2005-08-15", "2010-08-15"),
(1, "DST", "2010-08-15", now()),
(2, "SLS", "2008-10-15", "2013-10-15"),
(2, "DST", "2013-10-15", now()),
(3, "MNG", "2007-08-23", "2012-08-23"),
(3, "DST", "2012-08-23", now()),
(4, "CNS", "2006-05-18", "2011-05-18"),
(4, "DST", "2011-05-18", now()),
(5, "BY", "2009-03-30", "2014-03-30"),
(5, "DST", "2014-03-30", now()),
(6, "DST", "2008-01-22", "2015-01-22"),
(6, "SLS", "2015-01-22", now()),
(7, "DST", "2004-05-16", "2009-05-16"),
(7, "BY", "2009-05-16", now()),
(8, "DST", "2006-07-12", "2011-07-12"),
(8, "MNG", "2006-07-12", now()),
(9, "DST", "2008-09-19", "2015-09-19"),
(9, "CNS", "2015-09-19", now()),
(10, "DST", "2019-04-07", now()),
(11, "DST", "2015-09-22", "2020-09-22"),
(11, "BY", "2020-09-22", now()),
(12, "SLS", "2020-12-16", now()),
(13, "CNS", "2012-05-16", now()),
(14, "MNG", "2010-11-22", now()),
(15, "DST", "2016-05-31", now());

--5 employees are managers
INSERT INTO dept_manager VALUES
(1, "DST", "2010-08-15", now()),
(2, "BY", "2008-10-15", now()),
(3, "SLS", "2007-08-23", now()),
(4, "MNG", "2006-05-18", now()),
(5, "CNS", "2009-03-30", now());

--All employees have a degree and at least 5 titles are from 2020
INSERT INTO titles VALUES
(1, "It degree", "2020-01-01", "2021-01-01"),
(2, "It degree", "2020-01-01", "2021-01-01"),
(3, "It degree", "2020-01-01", "2021-01-01"),
(4, "It degree", "2020-01-01", "2021-01-01"),
(5, "It degree", "2020-01-01", "2021-01-01"),
(6, "It degree", "2018-01-01", "2019-01-01"),
(7, "It degree", "2017-01-01", "2018-01-01"),
(8, "It degree", "2016-01-01", "2017-01-01"),
(9, "It degree", "2015-01-01", "2016-01-01"),
(10, "It degree", "2014-01-01", "2015-01-01"),
(11, "It degree", "2013-01-01", "2014-01-01"),
(12, "It degree", "2012-01-01", "2013-01-01"),
(13, "It degree", "2011-01-01", "2012-01-01"),
(14, "It degree", "2010-01-01", "2011-01-01"),
(15, "It degree", "2009-01-01", "2010-01-01");

--Change the name of an employee. To do this, generate a query that affects only a certain employee based on their name, surname and date of birth.
UPDATE employees SET first_name = "Picunero" WHERE first_name = "Juanito" AND last_name = "Pitoche" AND  birth_date = "1996-02-29";

--Change the name of all departments.
UPDATE departments SET dept_name = "Mierdamento1" WHERE dept_no = "BY";
UPDATE departments SET dept_name = "Mierdamento2" WHERE dept_no = "CNS";
UPDATE departments SET dept_name = "Mierdamento3" WHERE dept_no = "DST";
UPDATE departments SET dept_name = "Mierdamento4" WHERE dept_no = "MNG";
UPDATE departments SET dept_name = "Mierdamento5" WHERE dept_no = "SLS";

--Select all employees with a salary greater than 20,000
SELECT employees.first_name, salaries.salary FROM salaries INNER JOIN employees ON employees.emp_no = salaries.emp_no  WHERE salaries.salary > 20000;

--Select all employees with a salary below 10,000
SELECT employees.first_name, salaries.salary FROM salaries INNER JOIN employees ON employees.emp_no = salaries.emp_no  WHERE salaries.salary < 10000;

--Select all employees who have a salary between 14.00 and 50,000
SELECT CONCAT(employees.first_name, ' ',  employees.last_name) AS 'Name', salaries.* FROM salaries INNER JOIN employees ON employees.emp_no=salaries.emp_no WHERE salaries.salary BETWEEN  14000 AND 50000;

--Select the total number of employees
SELECT COUNT(first_name) FROM employees;

--Select the total number of employees who have worked in more than one department
SELECT COUNT(*) FROM (SELECT COUNT(emp_no) FROM dept_emp GROUP BY emp_no HAVING COUNT(*)>1) dept_emp;

--Select the titles of the year 2019
SELECT title FROM titles WHERE YEAR(to_date) = 2019;

--Select only the name of the employees in capital letters
SELECT UPPER(first_name) FROM employees;

--Select the name, surname and name of the current department of each employee
SELECT employees.first_name, employees.last_name, current_dept_emp.dept_no, departments.dept_name FROM employees LEFT JOIN current_dept_emp ON employees.emp_no = current_dept_emp.emp_no LEFT JOIN departments ON current_dept_emp.dept_no = departments.dept_no;

--Select the name, surname and number of times the employee has worked as a manager
SELECT employees.first_name, employees.last_name, COUNT(dept_manager.emp_no) FROM employees LEFT JOIN dept_manager ON employees.emp_no = dept_manager.emp_no GROUP BY employees.emp_no ORDER BY dept_manager.emp_no DESC;

--Select the name of employees without any being repeated
SELECT employees.first_name FROM employees GROUP BY employees.first_name HAVING COUNT(employees.first_name)<2;

--Eliminate all employees with a salary greater than 20,000
DELETE employees.* FROM employees INNER JOIN salaries ON employees.emp_no = salaries.emp_no WHERE salaries.salary > 20000;

--Remove the department that has more employees
DELETE departments.* FROM departments INNER JOIN (SELECT MAX(counter), dept_no FROM (SELECT COUNT(*) counter, dept_no FROM current_dept_emp GROUP BY dept_no) current_dep_emp) max_dept ON departments.dept_no = max_dept.dept_no;