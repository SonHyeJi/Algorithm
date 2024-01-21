-- 코드를 입력하세요
SELECT uu.USER_ID, uu.NICKNAME, CONCAT(uu.CITY, ' ', uu.STREET_ADDRESS1, ' ', uu.STREET_ADDRESS2) as 전체주소, 
CONCAT(SUBSTR(uu.TLNO,1,3),'-', SUBSTR(uu.TLNO,4,4),'-', SUBSTR(uu.TLNO,8,4)) as 전화번호
FROM USED_GOODS_USER uu
JOIN USED_GOODS_BOARD ub
ON ub.WRITER_ID = uu.USER_ID
GROUP BY uu.USER_ID
HAVING COUNT(BOARD_ID) >= 3
# GROUP BY 1,2,3,4
# HAVING COUNT(*) >= 3
ORDER BY uu.USER_ID desc