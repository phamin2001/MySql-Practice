-- Stored Procedure

SELECT *
FROM employee_salary
WHERE salary >= 50000
;


CREATE PROCEDURE large_salaries()
SELECT *
FROM employee_salary
WHERE salary >= 50000
;

USE Parks_and_Recreation;
DELIMITER //
CREATE PROCEDURE large_salaries2()
BEGIN
    SELECT *
    FROM employee_salary
    WHERE salary >= 50000;
END //
DELIMITER ;

CALL large_salaries;

CALL large_salaries();

CALL large_salaries2;


DELIMITER $$
CREATE PROCEDURE large_salaries4()
BEGIN
	SELECT *
	FROM employee_salary
	WHERE salary >= 50000; 
	SELECT *
	FROM employee_salary
	WHERE salary >= 10000;
END $$
DELIMITER ;

CALL large_salaries4();


DELIMITER $$
CREATE PROCEDURE large_salaries5(employee_id INT) 
BEGIN
	SELECT salary
	FROM employee_salary
    WHERE employee_id = employee_id
	;
END $$
DELIMITER ;

CALL large_salaries5(1);
