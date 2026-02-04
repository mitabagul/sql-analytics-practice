WITH base AS(
    SELECT
        player_id,
        event_date,
        MIN(event_date) OVER(PARTITION BY player_id) AS first_date
    FROM
        Activity
),

per_player AS(
    SELECT
        player_id,
        MAX(CASE 
                WHEN event_date = DATE_ADD(first_date, INTERVAL 1 DAY) THEN 1
                ELSE 0
            END) AS returned_next_day
    FROM
        base
    GROUP BY
        player_id
)

SELECT
    ROUND(AVG(returned_next_day),2) AS fraction
FROM
    per_player;