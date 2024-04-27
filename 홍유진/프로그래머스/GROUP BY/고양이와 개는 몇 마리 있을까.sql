-- 고양이와 개가 몇마리?
-- 고양이 먼저 조회 (animal_type)

SELECT 
    ANIMAL_TYPE,
    COUNT(*) AS count
FROM 
    ANIMAL_INS
GROUP BY
    ANIMAL_TYPE
HAVING
    ANIMAL_TYPE IN ('Cat','Dog')
ORDER BY
    ANIMAL_TYPE;
