-- 코드를 입력하세요
SELECT round(AVG(DAILY_FEE),0) as AVERAGE_FEE
from CAR_RENTAL_COMPANY_CAR
WHERE CAR_TYPE LIKE 'SUV'