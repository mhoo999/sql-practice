-- 문제: 주문을 한 적이 없는 사용자의 이름을 조회하세요.
-- users 테이블 예시:
-- | id | name    | age |
-- |----|---------|-----|
-- | 1  | Alice   | 25  |
-- | 2  | Bob     | 30  |
-- | 3  | Charlie | 22  |
-- orders 테이블 예시:
-- | id | user_id | product   | amount |
-- |----|---------|-----------|--------|
-- | 1  | 1       | Book      | 2      |
-- | 2  | 2       | Pen       | 5      |
-- | 3  | 1       | Notebook  | 1      |
-- | 4  | 3       | Pencil    | 3      | 

SELECT u.name
FROM users u
LEFT JOIN orders o ON u.id = o.user_id
WHERE o.id IS NULL;