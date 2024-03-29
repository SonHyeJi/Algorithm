-- 코드를 입력하세요
SELECT cc.CAR_ID, cc.CAR_TYPE, TRUNCATE(cc.DAILY_FEE * 30 * (100 - DISCOUNT_RATE) / 100,0) as FEE
FROM CAR_RENTAL_COMPANY_CAR cc
JOIN (SELECT CAR_TYPE, DISCOUNT_RATE
      FROM CAR_RENTAL_COMPANY_DISCOUNT_PLAN 
      WHERE DURATION_TYPE = '30일 이상'
     )as dp
ON cc.CAR_TYPE = dp.CAR_TYPE
LEFT JOIN CAR_RENTAL_COMPANY_RENTAL_HISTORY rh 
ON cc.CAR_ID = rh.CAR_ID AND
(rh.START_DATE <= '2022-11-30' and rh.END_DATE >= '2022-11-01')
WHERE cc.CAR_TYPE IN('SUV','세단') AND 
TRUNCATE(cc.DAILY_FEE * 30 * (100 - DISCOUNT_RATE) / 100,0) BETWEEN 500000 AND 1999999
AND rh.CAR_ID IS NULL
ORDER BY 3 desc, 2 asc, 1 desc
