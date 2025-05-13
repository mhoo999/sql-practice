-- 문제: 나이가 25세 이상인 사용자의 이름과 나이를 조회하세요.
-- users 테이블 예시:
-- | id | name    | age |
-- |----|---------|-----|
-- | 1  | Alice   | 25  |
-- | 2  | Bob     | 30  |
-- | 3  | Charlie | 22  | 

SELECT name, age FROM users WHERE age>=25;