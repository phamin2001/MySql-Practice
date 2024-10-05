-- Group By

SELECT *
FROM employee_demographics;

SELECT gender
FROM employee_demographics
group by gender;

SELECT gender, AVG(age)
FROM employee_demographics
group by gender;

SELECT occupation, salary
FROM employee_salary
group by occupation, salary
;

SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
group by gender
;

-- ORDER BY
SELECT *
FROM employee_demographics
order by first_name ASC
;

SELECT *
FROM employee_demographics
order by first_name desc
;

SELECT *
FROM employee_demographics
order by gender, age
;

SELECT *
FROM employee_demographics
order by gender, age desc
;

SELECT *
FROM employee_demographics
order by 5, 4
;

