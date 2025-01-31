-- BETWEEN A AND B도 가능! 오히려 더 좋은 풀이일지도!
-- 들여쓰기 헷갈린다 다른 사람들은 어떻게 하는지 보자
SELECT   CASE
             WHEN MONTH(DIFFERENTIATION_DATE) <= 3 THEN '1Q'
             WHEN MONTH(DIFFERENTIATION_DATE) <= 6 THEN '2Q'
             WHEN MONTH(DIFFERENTIATION_DATE) <= 9 THEN '3Q'
             WHEN MONTH(DIFFERENTIATION_DATE) <= 12 THEN '4Q'
         END AS QUARTER,
         COUNT(*) AS ECOLI_COUNT
FROM ECOLI_DATA
GROUP BY CASE
             WHEN MONTH(DIFFERENTIATION_DATE) <= 3 THEN '1Q'
             WHEN MONTH(DIFFERENTIATION_DATE) <= 6 THEN '2Q'
             WHEN MONTH(DIFFERENTIATION_DATE) <= 9 THEN '3Q'
             WHEN MONTH(DIFFERENTIATION_DATE) <= 12 THEN '4Q'
         END 
ORDER BY QUARTER
    