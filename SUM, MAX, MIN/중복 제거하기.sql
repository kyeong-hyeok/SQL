
-- 동물 보호소에 들어온 동물의 이름은 몇 개인지 조회하는 SQL 문을 작성해주세요.
-- 이때 이름이 NULL인 경우는 집계하지 않으며 중복되는 이름은 하나로 칩니다.

SELECT COUNT(DISTINCT NAME) AS 'count' FROM ANIMAL_INS

-- 집계 함수 계산 시 NULL은 포함되지 않음
-- 중복만 DISTINCT로 제거