-- LeetCode 185: Department Top Three Salaries
-- Difficulty: Hard
-- Concept: WINDOW FUNCTION (top N per department)

WITH CTE AS(
    SELECT
        d.name AS Department,
        e.name AS Employee,
        e.salary AS Salary,
        DENSE_RANK() OVER (PARTITION BY e.departmentId ORDER BY e.salary DESC) AS ranking
    FROM
        Employee e
    JOIN
        Department d
    ON
        e.departmentId = d.id
)

SELECT
    Department,
    Employee,
    Salary
FROM 
    CTE
WHERE 
    ranking IN (1,2,3)