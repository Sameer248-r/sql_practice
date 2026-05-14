select * from employeess;
SELECT  * FROM DEPARTMENTS;

-- Q1) 1. Show all employees with department names  Expected columns: emp_name , dept_name

SELECT  e.emp_name , d.dept_name
from employeess e left join departments d
on e.dept_id = d.dept_id;

-- Q2.) Show only employees who belong to departments

SELECT e.emp_name , d.dept_name
from employeess e inner join departments d
on e.dept_id = d.dept_id;

-- Q3) Show all departments even if no employee exists

SELECT  e.emp_name , d.dept_name
from employeess e right join departments d
on e.dept_id = d.dept_id;

-- Q4) Find employees without departments Expected output: dinesh 

select  e.emp_name , d.dept_name 
from employeess e left join  departments d
on e.dept_id = d.dept_id
where d.dept_name is null;

-- Q5) Find departments without employees Expected output: marketing

select e.emp_name , d.dept_name
from employeess e right join departments d
on e.dept_id = d.dept_id
where e.dept_id is null;

-- Q 6.) Count employees in each department

select d.dept_name , count(e.emp_id)  as total_employee
from employeess e join departments d
on e.dept_id = d.dept_id
group by d.dept_name;

-- Q 7). Show all employee names in uppercase with department names

select upper(e.emp_name) , upper(d.dept_name)
from employeess e join departments d
on e.dept_id = d.dept_id;

-- Q 8). Show employee name and department name together

select concat(e.emp_name , ' works in ',  d.dept_name) as employee_departments
from employeess e join departments d
on e.dept_id = d.dept_id;

-- Q9) Show employees whose department is HR
select e.emp_name , d.dept_name 
from employeess e join departments d
on e.dept_id = d.dept_id
where d.dept_name = "hr";

-- Q10) Show employees sorted by department name

select e.emp_name ,d.dept_name 
from employeess e join departments d
on e.dept_id = d.dept_id
order by d.dept_name ;

CREATE TABLE staff (
    emp_id INT,
    emp_name VARCHAR(50),
    manager_id INT
);

INSERT INTO staff VALUES
(1,'abhi',NULL),
(2,'boby',1),
(3,'charan',1),
(4,'dinesh',2);

select * from staff;

-- Q 11) Show employee and manager names 
 
select a.emp_name as  employee , b.emp_name as manager
from staff a left join staff b
on a.manager_id = b.emp_id;

-- Q 12) Show :  employee name , employee id , manager name

select a.emp_name  as employee  , a.emp_id as employee_id , b.emp_name as manager
from staff a left join staff b
on a.manager_id = b.emp_id;

-- Q 13) Show only employees who have managers.

select a.emp_name  as employee , b.emp_name as manager
from staff a left join staff b
on a.manager_id = b.emp_id
where b.emp_name is not null;

-- Q14)  Find managers who manage more than 1 employee.

select  b.emp_name  as manager ,
count(*) as total_employee
from staff a left join staff b
on a.manager_id = b.emp_id
group by b.emp_name 
having count(*) > 1;

-- Q15) Show departments having more than 0 employees.

SELECT 
    d.dept_name,
    COUNT(e.emp_id) AS total_employees
FROM departments d
JOIN employeess e
ON d.dept_id = e.dept_id
GROUP BY d.dept_name
HAVING COUNT(e.emp_id) > 0;

-- Q16) Show employees whose department name starts with H.

select e.emp_name , d.dept_name
from employeess e join departments d
on e.dept_id = d.dept_id
where d.dept_name like "h%";

-- Q17) Show employees who do not belong to any department.

 SELECT e.emp_name
FROM employeess e
LEFT JOIN departments d
ON e.dept_id = d.dept_id
WHERE d.dept_id IS NULL;

-- Q18) Show all possible employee-department combinations.

select e.emp_name , d.dept_name
from employeess e cross join departments d;

-- Q19) Find total departments with no employees.

select count(*) as no_employee_dept
from departments d left join employeess e
on d.dept_id = e.dept_id
where e.dept_id is null;









 









