-- Limit & Aliasing
SELECT * 
FROM employee_demographics
ORDER BY AGE DESC
LIMIT 2, 1
; 

SELECT gender, AVG(age) AS avg_age
FROM employee_demographics
GROUP BY gender
HAVING AVG(age) > 40
;















