-- 문제: 나이별로 사용자의 수를 집계하여, 나이와 해당 나이를 가진 사용자 수를 조회하세요.
-- users 테이블 예시:
-- | id | name    | age |
-- |----|---------|-----|
-- | 1  | Alice   | 25  |
-- | 2  | Bob     | 30  |
-- | 3  | Charlie | 22  | 

SELECT age, COUNT(*) AS user_count
FROM users
GROUP BY age;