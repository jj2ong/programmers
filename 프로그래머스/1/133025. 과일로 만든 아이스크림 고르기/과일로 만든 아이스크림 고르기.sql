SELECT DISTINCT f.Flavor
FROM FIRST_HALF f LEFT JOIN ICECREAM_INFO i
ON f.Flavor = i.Flavor
WHERE f.TOTAL_ORDER > 3000 AND i.INGREDIENT_TYPE = 'fruit_based'
ORDER BY f.TOTAL_ORDER DESC