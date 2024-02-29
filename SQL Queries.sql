select * from salaries;
-- Employee name and ther job titles
select EmployeeName,JobTitle from salaries;
-- No. of employees.
Select count(id) as 'No. of employees' from salaries;
-- Unique Job titles in the table.
select distinct JobTitle from salaries;
-- show the job title and the overtime pay for all 	employees with overtime pay greater than 50000.
select JobTitle,OvertimePay from salaries where overtimePay >50000;
-- average BasePay distribution to all the employees.
select avg(Basepay) as Avg_Base_Pay from  salaries;
-- top 10 higest paid employees.
select EmployeeName,TotalPay from salaries order by TotalPay desc limit 10;
-- show the average of basePay,Overtimepay and otherpay for each employee;
select EmployeeName, round((basepay+overtimepay+otherpay)/3,2) as avg_pay from salaries;
-- show all the employees who have the word "manager" in their job title;
select EmployeeName,JobTitle from salaries where JobTitle like'%Manager%';
-- show all the employees whos  job title is not "manager"
select EmployeeName,JobTitle from salaries where JobTitle not like "%manager%";
-- Show all the employee where total pay between 50000 and 75000.
select EmployeeName,TotalPay from salaries where TotalPay between 50000 and 75000;
-- show the details of the employees whos totalpaybenifit value is between 125000 and 150000 and the job title is director
select * from salaries  where TotalPayBenefits between 125000 and 150000 and JobTitle like '%Director%';
-- show all  job titles  with avg base pay at least 100000 and order them by average pay in descending order.
SELECT JobTitle, AVG(BasePay) AS avg_sal FROM salaries GROUP BY JobTitle HAVING avg_sal >= 100000 ORDER BY avg_sal DESC;
 
