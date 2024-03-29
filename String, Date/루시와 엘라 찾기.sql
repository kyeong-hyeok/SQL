
-- 동물 보호소에 들어온 동물 중 이름이 Lucy, Ella, Pickle, Rogan, Sabrina, Mitty인 동물의 아이디와 이름, 성별 및 중성화 여부를 조회하는 SQL 문을 작성해주세요.
-- 이때 결과는 아이디 순으로 조회해주세요. 

SELECT ANIMAL_ID, NAME , SEX_UPON_INTAKE FROM ANIMAL_INS
WHERE NAME REGEXP '^(Lucy|Ella|Pickle|Rogan|Sabrina|Mitty)$'
ORDER BY ANIMAL_ID

-- REGEXP 사용시 시작과 끝 명시해 주지 않으면 해당 문자열을 포함된 문자열이 모두 검색됨!
-- WHERE NAME IN ('Lucy', 'Ella', 'Pickle', 'Rogan', 'Sabrina', 'Mitty')