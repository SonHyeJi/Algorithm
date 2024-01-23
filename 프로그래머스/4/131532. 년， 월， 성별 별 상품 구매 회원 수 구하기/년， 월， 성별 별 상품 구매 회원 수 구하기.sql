-- 코드를 입력하세요
SELECT year(os.sales_date) as YEAR, month(os.sales_date) as MONTH, ui.GENDER, 
count(distinct ui.USER_ID) as USERS
from online_sale os
JOIN USER_INFO ui
ON os.USER_ID = ui.USER_ID
WHERE GENDER IS NOT NULL
GROUP BY year(sales_date),month(sales_date),GENDER
ORDER BY 1,2,3
