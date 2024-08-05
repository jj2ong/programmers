SELECT CAST(DATE_FORMAT(DATETIME, '%H') AS UNSIGNED) AS HOUR, COUNT(*) AS COUNT
FROM ANIMAL_OUTS 
WHERE 1 = 1
      AND DATE_FORMAT(DATETIME, '%H') >= 9
      AND DATE_FORMAT(DATETIME, '%H') <= 19
GROUP BY DATE_FORMAT(DATETIME, '%H')
ORDER BY HOUR