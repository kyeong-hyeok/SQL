
-- 보호소에서는 몇 시에 입양이 가장 활발하게 일어나는지 알아보려 합니다.
-- 0시부터 23시까지, 각 시간대별로 입양이 몇 건이나 발생했는지 조회하는 SQL문을 작성해주세요.
-- 이때 결과는 시간대 순으로 정렬해야 합니다.

SET @i := -1;
SELECT (@i := @i + 1) AS 'HOUR',
        (SELECT COUNT(*) FROM ANIMAL_OUTS WHERE HOUR(DATETIME) = @i) AS COUNT
FROM ANIMAL_OUTS
WHERE @i < 23

-- 테이블에 존재하지 않는 시간 외에는 출력 X
-- 임의의 변수 만들기
-- SET @var := 10 # 변수 선언
-- 임의의 변수를 만든다.(변수는 쿼리를 돌며 1씩 증가함)
-- 서브쿼리로 변수와 같은 시간대의 COUNT(*) 출력