
-- 보호소에서 중성화 수술을 거친 동물 정보를 알아보려 합니다.
-- 보호소에 들어올 당시에는 중성화되지 않았지만, 보호소를 나갈 당시에는 중성화된 동물의 아이디와 생물 종, 이름을 조회하는 아이디 순으로 조회하는 SQL 문을 작성해주세요.

SELECT O.ANIMAL_ID, O.ANIMAL_TYPE, O.NAME FROM ANIMAL_OUTS O
LEFT JOIN ANIMAL_INS I ON O.ANIMAL_ID = I.ANIMAL_ID
WHERE I.SEX_UPON_INTAKE LIKE 'Intact%' AND O.SEX_UPON_OUTCOME regexp 'Spayed|Neutered'
-- (O.SEX_UPON_OUTCOME LIKE 'Spayed%' or O.SEX_UPON_OUTCOME LIKE'Neutered%')
ORDER BY O.ANIMAL_ID, O.ANIMAL_TYPE, O.NAME

-- regexp -> I(수직선)로 구분된 문자에 해당하는 문자열을 찾음.
-- '데이터1|데이터2'