SELECT INGREDIENT_TYPE, SUM(TOTAL_ORDER) AS TOTAL_ORDER
FROM FIRST_HALF f JOIN ICECREAM_INFO i
ON f.FLAVOR = i.FLAVOR
GROUP BY INGREDIENT_TYPE
ORDER BY TOTAL_ORDER