-- 코드를 입력하세요
SELECT count(*) as users
FROM USER_INFO 
WHERE JOINED LIKE '2021%' AND
   AGE >= 20 AND AGE <= 29