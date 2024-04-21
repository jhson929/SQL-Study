
-- 상품코드 별 매출액 합계 (PRICE * SALES_AMOUNT)
-- 매출액 DESC, 코드 ASC

SELECT 
    P.PRODUCT_CODE,
    SUM((P.PRICE * O.SALES_AMOUNT)) AS SALES
FROM PRODUCT AS P
    LEFT JOIN OFFLINE_SALE AS O ON P.PRODUCT_ID = O.PRODUCT_ID
GROUP BY
    P.PRODUCT_CODE
ORDER BY
    SALES DESC, P.PRODUCT_CODE;
    
