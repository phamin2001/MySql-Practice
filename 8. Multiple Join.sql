-- Joining Multiple Tables together
SELECT *
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
INNER JOIN parks_departments pd
	ON sal.dept_id =  pd.department_id
;

