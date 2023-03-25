
-- 입양을 간 동물 중, 보호 기간이 가장 길었던 동물 두 마리의 아이디와 이름을 조회하는 SQL문을 작성해주세요.
-- 이때 결과는 보호 기간이 긴 순으로 조회해야 합니다.

SELECT O.ANIMAL_ID, O.NAME FROM ANIMAL_INS I, ANIMAL_OUTS O
WHERE I.ANIMAL_ID = O.ANIMAL_ID
ORDER BY (O.DATETIME - I.DATETIME) DESC
LIMIT 2

-- TIMEDIFF를 사용한다면 34일 하고도 23시간보다 큰 시간 간격을 제대로 표시하지 못한다.
-- 838:59:59 보다 큰 시간 간격을 나타내기 위해 위와 같이 쿼리를 작성하였다.