CREATE TABLE employees (
    id INT,
    name VARCHAR(50),
    city VARCHAR(50)
);

INSERT INTO employees VALUES
(1, 'Amit', 'Delhi'),
(2, 'Ankit', 'Mumbai'),
(3, 'Rohit', 'Delhi'),
(4, 'Sumit', 'Pune'),
(5, 'Aman', 'Chennai'),
(6, 'Kiran', 'Mumbai');

-- Q1) .Find names starting with 'A'

SELECT  name from  employees
WHERE  name LIKE "a%";

-- Q2) Find names ending with 't'

SELECT name from employees
WHERE name LIKE  "%t";

-- Q3) Find cities containing 'um'

SELECT  city from employees
WHERE city LIKE "%um%";

-- Q4) Find names with exactly 5 letters

SELECT  name from employees
WHERE  name LIKE "_____";

-- Q5)  Find names where second letter is 'm'

SELECT * FROM employees
WHERE name LIKE "_m%";

-- Q6) Find cities starting with 'M' and ending with 'i'

SELECT * FROM employees
WHERE city LIKE "m%i";

-- Q7) Find names that do NOT start with 'A'

SELECT * FROM employees
WHERE name NOT LIKE  "a%";

-- Q8) Find names containing letter 'i'

SELECT * FROM employees
WHERE  name LIKE "%a%";

-- Q9) Names ending with n

SELECT * FROM employees
WHERE name LIKE "%n";

-- Q10) Cities with exactly 6 letters

SELECT city from employees
WHERE city LIKE "______";

-- Q11) Names starting with S

SELECT  name FROM employees
WHERE name LIKE "s%";

-- Q12) Cities containing e

SELECT city from employees
WHERE city LIKE "%e%";

-- Q13) Find names where:  first letter = A , last letter = t

SELECT name FROM employees
WHERE name LIKE  "a%t";

-- Q14)  Find cities where: second letter is u

SELECT city FROM employees
WHERE city  LIKE "_u%";


-- Q15) Find names with exactly 4 letters ending in t

SELECT name FROM employees
WHERE name LIKE "___t";

-- Q16) Find cities NOT containing i

SELECT  city  FROM employees
WHERE city NOT LIKE "%i%";

-- Q17 Find names: starting with A , exactly 5 letters

SELECT  name FROM employees
WHERE name LIKE  "a____";

-- Q18) Find names where: third letter is m

SELECT name FROM employees 
WHERE name LIKE "__m%";













