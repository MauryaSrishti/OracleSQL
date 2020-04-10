--Creating a view on table EMPLOYEES
CREATE VIEW emp_view AS
SELECT employee_id, first_name, job_id, department_id
FROM employees
WHERE salary < 10000;

--Retrieving result set from the view
SELECT * FROM emp_view;

--Updating the view definition
CREATE OR REPLACE VIEW emp_view AS
SELECT employee_id, first_name, job_id, department_id
FROM employees
WHERE salary < 5000;

--Droping the view
DROP VIEW emp_view;

--Updatable view
CREATE VIEW DEMO_EMP AS
SELECT employee_id, first_name, last_name, job_id, department_id
FROM employees
WHERE job_id = 'IT_PROG';

--Read-Only view
CREATE VIEW EMP_DETAILS AS
SELECT e.employee_id, e.first_name, e.last_name, e.job_id, d.department_name
FROM employees e
JOIN departments d ON e.department_id = d.department_id
WHERE d.department_name = 'Marketing';

