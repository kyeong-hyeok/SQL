
-- '경제' 카테고리에 속하는 도서들의 도서 ID(BOOK_ID), 저자명(AUTHOR_NAME), 출판일(PUBLISHED_DATE) 리스트를 출력하는 SQL문을 작성해주세요.
-- 결과는 출판일을 기준으로 오름차순 정렬해주세요.

SELECT BOOK_ID, AUTHOR_NAME, DATE_FORMAT(PUBLISHED_DATE, "%Y-%m-%d") AS PUBLISHED_DATE
FROM BOOK, AUTHOR 
WHERE AUTHOR.AUTHOR_ID = BOOK.AUTHOR_ID
AND CATEGORY = '경제'
ORDER BY PUBLISHED_DATE

-- INNER JOIN
SELECT BOOK_ID, AUTHOR_NAME, DATE_FORMAT(PUBLISHED_DATE, "%Y-%m-%d") AS PUBLISHED_DATE
FROM BOOK INNER JOIN AUTHOR ON AUTHOR.AUTHOR_ID = BOOK.AUTHOR_ID
WHERE CATEGORY = '경제'
ORDER BY PUBLISHED_DATE