--Single-line Subquery
--Write a query to find the details of employees who are earning the highest salary.
SELECT *
FROM employees
WHERE salary = (SELECT MAX(salary) FROM employees);

--Multi-row Subquery
--Display the details of all the employees whose departments are located at location_id = 1700
SELECT first_name, last_name, department_id
FROM employees
WHERE department_id IN (SELECT department_id FROM departments WHERE location_id = 1700);

--Correlated Subquery
--Select the list of employees who earned a higher salary when compared to the average salary of their departments.
SELECT employee_id, salary, department_id
FROM employees t1
WHERE salary > (SELECT AVG(salary)
FROM employees t2
WHERE t1. department_id = t2.department_id);

--Multi-Column Subquery
--Display the details of employees who earn the allowed minimum salary
SELECT *
FROM employees
WHERE  (salary, job_id) IN (SELECT min_salary, job_id FROM jobs);

--Inline Subquery
--Display how many employees are assigned to each department
SELECT *
FROM (SELECT department_id, COUNT(*) AS emp_count
      FROM employees
      GROUP BY department_id) emp
JOIN departments dept ON emp.department_id = dept.department_id;
