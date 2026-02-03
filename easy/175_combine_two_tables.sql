-- LeetCode 175: Combine Two Tables
-- Difficulty: Easy
-- Concept: LEFT JOIN

SELECT
    firstName,
    lastName,
    city,
    state
FROM
    Person p
LEFT JOIN
    Address a
ON
    p.personid = a.personid;