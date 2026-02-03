-- LeetCode 184: Department Highest Salary
-- Difficulty: Medium
-- Concept: WINDOW FUNCTION (rank per department)

WITH CTE AS(
    SELECT
        d.name AS Department,
        e.name AS Employee,
        e.salary As Salary,
        DENSE_RANK() OVER (PARTITION BY d.name ORDER BY e.salary DESC) AS ranking
    FROM
        Employee e
    JOIN
        Department d
    ON
        e.departmentid = d.id
)

SELECT
    Department,
    Employee,
    Salary
FROM
    CTE
WHERE   
    ranking = 1;