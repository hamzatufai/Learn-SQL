DELIMITER $$
CREATE PROCEDURE large_salaries3()
BEGIN
	SELECT *
	FROM employee_salary
	WHERE salary >= 50000;
	SELECT * 
	FROM employee_salary
	WHERE salary >= 10000;
END $$   
DELIMITER ;

CALL large_salaries3();


DELIMITER $$
CREATE PROCEDURE large_salaries4(carly INT)
BEGIN
	SELECT salary
	FROM employee_salary
	WHERE employee_id = carly
    ;

END $$   
DELIMITER ;

CALL large_salaries4(1);




