SELECT * 
FROM Parks_and_Recreation.employee_demographics;

SELECT first_name, 
last_name,
birth_date,
age,
age + 10,
(age + 10) * 10
FROM Parks_and_Recreation.employee_demographics;
# PEMDAS

SELECT distinct first_name, gender
FROM Parks_and_Recreation.employee_demographics;