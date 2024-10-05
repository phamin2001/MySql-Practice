-- Limit & Aliasing

SELECT * 
FROM employee_demographics
ORDER BY age DESC
LIMIT 2, 1
;

-- Aliasing
-- Using to change a name of the Coulumn

SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender 
having avg(age) > 40
;

SELECT gender, AVG(age) AS avg_age
FROM employee_demographics
GROUP BY gender 
having avg_age > 40
;