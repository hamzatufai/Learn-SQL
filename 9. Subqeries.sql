-- Subqueries

SELECT *
FROM employee_demographics
WHERE employee_id IN 
	(SELECT employee_id
    FROM employee_salary
    WHERE dept_id = 1

)
;

SELECT *
FROM parks_departments
;

SELECT * 
FROM employee_salary
WHERE first_name IN 
	(SELECT first_name
    FROM employee_demographics
    WHERE employee_id = 1
)
;

SELECT first_name, salary,
(SELECT AVG(salary)
FROM employee_salary) AS avg_sal
FROM employee_salary
;

SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
GROUP BY gender
;

SELECT gender, AVG(`MAX(age)`)
FROM 
(   SELECT gender, 
	AVG(age) AS avg_age, 
    MAX(age) AS max_age, 
	MIN(age) AS min_age, 
	COUNT(age) AS count_age
	FROM employee_demographics
	GROUP BY gender
) AS agg_table
GROUP BY gender
;


 





