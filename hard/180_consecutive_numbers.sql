WITH CTE AS(
    SELECT
        id,
        num,
        lead(num,1) OVER(ORDER BY id) AS num_next1,
        lead(num,2) OVER(ORDER BY id) AS num_next2
    FROM
        Logs
)

SELECT
    DISTINCT num AS ConsecutiveNums
FROM 
    CTE
WHERE
    num = num_next1 AND 
    num_next1 = num_next2;