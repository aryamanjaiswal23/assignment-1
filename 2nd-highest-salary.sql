CREATE TABLE Employee (
    id INT,
    salary INT
); 
-- case 1
insert into Employee (id, salary) values (1, 2500); 
insert into Employee (id, salary) values (2, 2936); 
insert into Employee (id, salary) values (3, 5918); 
insert into Employee (id, salary) values (4, 2500); 
insert into Employee (id, salary) values (5, 5500); 
insert into Employee (id, salary) values (6, 3211); 
insert into Employee (id, salary) values (7, 6283); 
insert into Employee (id, salary) values (8, 2500); 
insert into Employee (id, salary) values (9, 5500); 
insert into Employee (id, salary) values (10, 5532);

select * from Employee;

-- case 2
insert into Employee (id, salary) values (1, 5500);
insert into Employee (id, salary) values (2, 5500);
insert into Employee (id, salary) values (3, 5500);

-- solution
select ifnull((select distinct salary from Employee 
order by salary desc , salary limit 1 offset 1
),null) as 'SecondHighestSalary' 
