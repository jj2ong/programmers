WITH TEMP AS (
    SELECT YEAR(DIFFERENTIATION_DATE) AS YEAR, MAX(SIZE_OF_COLONY) AS MAX_SIZE
    FROM ECOLI_DATA
    GROUP BY YEAR(DIFFERENTIATION_DATE)
)

SELECT YEAR, (MAX_SIZE - SIZE_OF_COLONY) AS YEAR_DEV, ID
FROM ECOLI_DATA e
JOIN TEMP t ON YEAR(e.DIFFERENTIATION_DATE) = t.YEAR
ORDER BY YEAR, YEAR_DEV