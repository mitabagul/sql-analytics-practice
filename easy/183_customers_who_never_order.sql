-- LeetCode 183: Customers Who Never Order
-- Difficulty: Easy
-- Concept: LEFT JOIN + NULL filter

SELECT
    c.name as Customers
FROM
    Customers c
LEFT JOIN
    Orders o
ON
    c.id = o.customerId
WHERE
    o.customerId IS NULL;