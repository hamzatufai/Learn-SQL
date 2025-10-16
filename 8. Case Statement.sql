-- Case Statement

SELECT first_name,
last_name,
age,
CASE 
	WHEN age <= 30 THEN 'Young'
    WHEN age BETWEEN 30 AND 50 THEN 'Old'
    WHEN age >= 50 THEN 'On death door'
END AS Age_Braket

FROM employee_demographics
;


 -- Pay Increase and Bonus 
-- < 50000 = 5%
-- > 50000 = 7%
-- Finance = 10% bonus

SELECT first_name, last_name, salary,
CASE
	WHEN salary < 50000 THEN salary + (salary * 5/100)
    WHEN salary > 50000 THEN salary + (salary * 7/100)

END AS NEW_SALARY,
CASE
	 WHEN dept_id = 6 THEN salary * .10
END AS Bonus
FROM employee_salary
; 




SELECT *
FROM employee_salary
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 