-- 문제: 각 사용자의 이름과 그 사용자가 주문한 상품명을 모두 조회하세요.
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

SELECT u.name, o.product
FROM orders o
INNER JOIN users u ON o.user_id=u.id
ORDER BY u.name;
