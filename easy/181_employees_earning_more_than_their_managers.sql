-- LeetCode 181: Employees Earning More Than Their Managers
-- Difficulty: Easy
-- Concept: SELF JOIN

SELECT
    e.name AS Employee
FROM
    Employee e
RIGHT JOIN
    Employee d
ON
    e.managerId = d.id
WHERE
    e.salary  > d.salary