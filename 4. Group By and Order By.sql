--  GROUP BY
SELECT *
FROM employee_demographics;

SELECT gender, AVG(age), MAX(age), MIN(AGE), COUNT(AGE)
FROM employee_demographics
group by gender
;

SELECT occupation, salary
FROM employee_salary
group by occupation, salary
;


-- ORDER BY
SELECT *
FROM employee_demographics
ORDER BY gender, AGE asc
;


-- Having vs Where
SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender
HAVING AVG(age)	> 40
;



SELECT occupation, AVG(salary)
FROM employee_salary
WHERE occupation LIKE '%manager%'
GROUP BY occupation
HAVING AVG(salary) > 75000
;







