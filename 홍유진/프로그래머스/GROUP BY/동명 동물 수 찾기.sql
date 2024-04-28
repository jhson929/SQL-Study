
-- 동물 이름 중 2번 이상 쓰인 이름과 해당 이름이 쓰인 횟수를 조회
-- 이름이 없는 동물 제외
-- 이름 순 asc

SELECT
    NAME,
    COUNT(*) AS COUNT
FROM 
    ANIMAL_INS
WHERE
    NAME IS NOT NULL  -- 이름 없는 동물은 집계에서 제외
GROUP BY
    NAME
HAVING
    COUNT(*) >= 2
ORDER BY
    NAME;
