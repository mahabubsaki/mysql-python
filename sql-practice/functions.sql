--group by groups the data by matching element after select and group by property should be same

SELECT department ,COUNT(*) as count
from employees
GROUP BY department

--max function to get max salary
Select Max(salary) from employees 

--min function to get min salary
Select min(salary) from employees 


-- making sum of different department
select department, Sum(salary) as totalSalary from employees group by department


--giving condition on group

select department, Sum(salary) as totalSalary from employees group by department having totalSalary >400000

--alter table use to add a new property to the data of all object

ALTER TABLE employees
ADD sex varchar(7);

select * from employees