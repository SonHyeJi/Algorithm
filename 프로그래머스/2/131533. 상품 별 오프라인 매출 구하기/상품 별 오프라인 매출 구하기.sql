-- 코드를 입력하세요
SELECT PRODUCT.PRODUCT_CODE, SUM(PRODUCT.PRICE * OFFLINE_SALE.SALES_AMOUNT) AS SALES
FROM OFFLINE_SALE
JOIN PRODUCT
ON PRODUCT.PRODUCT_ID = OFFLINE_SALE.PRODUCT_ID
GROUP BY PRODUCT.PRODUCT_CODE
ORDER BY 2 DESC, 1