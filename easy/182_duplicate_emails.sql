-- LeetCode 182: Duplicate Emails
-- Difficulty: Easy
-- Concept: GROUP BY + HAVING

SELECT
    email 
FROM
    Person 
GROUP BY
    email
HAVING
    count(*)>1;