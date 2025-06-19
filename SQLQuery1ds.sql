select * from jobs_in_data
where employee_residence = 'India';

SELECT ROUND(AVG(salary_in_usd), 2) AS avg_salary_usd
FROM jobs_in_data
WHERE employee_residence = 'India';

select experience_level, ROUND(AVG(Salary_in_usd), 2) as Avg_salary
from jobs_in_data
where employee_residence = 'india'
group by experience_level;

select job_title , salary 
from jobs_in_data
where job_title='Data Analyst' and employee_residence='India'
order by salary_in_usd desc;


select work_setting, Round(avg(salary_in_USD),2) as avr_salary
from jobs_in_data
where employee_residence='India'
group by work_setting;


select  sum(salary_in_usd) as total_salry
from jobs_in_data
where  employee_residence='India';


SELECT 
  work_setting,
  experience_level,
  ROUND(AVG(salary_in_usd), 2) AS avg_salary
FROM jobs_in_data
WHERE employee_residence = 'India'
GROUP BY work_setting, experience_level
ORDER BY work_setting, experience_level;


SELECT 
    CASE 
	WHEN employee_residence = 'India' THEN 'India'
        ELSE 'Global'
    END AS region,
    ROUND(AVG(salary_in_usd), 2) AS avg_salary
FROM jobs_in_data
GROUP BY employee_residence;

SELECT work_year, experience_level, ROUND(AVG(salary_in_usd), 2) AS avg_salary
FROM jobs_in_data
GROUP BY work_year, experience_level;



