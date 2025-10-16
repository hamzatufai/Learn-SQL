-- Windows Function

SELECT dem.first_name, dem.last_name, gender, AVG(salary) AS avg_sal
FROM employee_demographics AS dem
JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
GROUP BY gender, dem.first_name, dem.last_name
;


SELECT dem.first_name, dem.last_name, gender, AVG(salary) OVER(partition by gender)
FROM employee_demographics AS dem
JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
;


SELECT dem.first_name, dem.last_name, gender, AVG(salary) OVER(partition by gender)
FROM employee_demographics AS dem
JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
;


SELECT dem.first_name, dem.last_name, gender, salary,
SUM(salary)  OVER(partition by gender order by dem.employee_id) AS Rolling_total
FROM employee_demographics AS dem
JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
;


SELECT dem.first_name, dem.last_name, gender, salary,
ROW_NUMBER() OVER(partition by gender order by dem.employee_id) AS row_num,
RANK() OVER(partition by gender order by dem.employee_id) AS rank_num,
DENSE_RANK() OVER(partition by gender order by dem.employee_id) AS dense_num
FROM employee_demographics AS dem
JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
;














