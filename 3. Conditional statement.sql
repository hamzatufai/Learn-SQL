--  Where Clause

SELECT * 
FROM employee_salary
WHERE first_name = 'Leslie';

SELECT * 
FROM employee_salary
WHERE salary = 50000 and employee_id = '5';

SELECT * 
FROM employee_salary
WHERE salary <= 50000;

SELECT * 
FROM employee_demographics
WHERE gender = 'Female';

SELECT * 
FROM employee_demographics
WHERE birth_date > '1985-01-01';

-- AND OR NOT -- LOGICAL OPERATORS

SELECT * 
FROM employee_demographics
WHERE birth_date > '1985-01-01'
AND gender = 'male';

SELECT * 
FROM employee_demographics
WHERE birth_date > '1985-01-01'
OR gender = 'male';
;

SELECT * 
FROM employee_demographics
WHERE birth_date > '1985-01-01'
OR NOT gender = 'male';

SELECT * 
FROM employee_demographics
WHERE (first_name = 'Leslie' and age = 44) OR age > 55;

-- Like Statement 
-- % and _ 

SELECT * 
FROM employee_demographics
WHERE first_name LIKE 'a___%';

SELECT * 
FROM employee_demographics
WHERE birth_date lIKE '1989%';
