-- 문제: 각 사용자의 이름과 주문한 상품 개수를 조회하세요. (주문이 없는 사용자도 0으로 표시)
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

SELECT u.name, COALESCE(SUM(o.amount), 0)
FROM users u
LEFT JOIN orders o ON u.id =o.user_id
GROUP BY u.id, u.name;