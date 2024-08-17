WITH more_than_five AS (
    SELECT CAR_ID
    FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
    WHERE 1=1
      AND START_DATE >= DATE('2022-08-01')
      AND START_DATE < DATE('2022-11-01')
    GROUP BY CAR_ID
    HAVING COUNT(*) >= 5
)

SELECT MONTH(START_DATE) AS MONTH, c.CAR_ID, COUNT(*) AS RECORDS
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY c
JOIN more_than_five m ON c.CAR_ID = m.CAR_ID
WHERE 1=1 -- 원래부터 8, 9, 10월만 있는 데이터라 WHERE절 생략해도 맞는 것처럼 보였던 것! 이거 때문에 자꾸 틀렸었다!
  AND START_DATE >= DATE('2022-08-01')
  AND START_DATE < DATE('2022-11-01')
GROUP BY MONTH(START_DATE), c.CAR_ID
HAVING COUNT(*) > 0
ORDER BY MONTH, c.CAR_ID DESC