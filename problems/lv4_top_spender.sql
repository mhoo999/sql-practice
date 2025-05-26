-- 문제: 가장 많은 금액을 사용한 사용자의 이름과 총 사용 금액을 조회하세요.
-- (주문 금액은 상품 가격 * 수량의 합으로 계산)
-- users 테이블 예시:
-- | id | name    | age |
-- |----|---------|-----|
-- | 1  | Alice   | 25  |
-- | 2  | Bob     | 30  |
-- | 3  | Charlie | 22  |
-- | 4  | Diana   | 28  |
-- | 5  | Eve     | 35  |
-- | 6  | Frank   | 40  |
-- products 테이블 예시:
-- | id | name     | price |
-- |----|----------|-------|
-- | 1  | Book     | 12000 |
-- | 2  | Pen      | 1000  |
-- | 3  | Notebook | 3000  |
-- | 4  | Pencil   | 500   |
-- | 5  | Eraser   | 700   |
-- | 6  | Ruler    | 1500  |
-- orders 테이블 예시:
-- | id | user_id | product_id | amount |
-- |----|---------|------------|--------|
-- | 1  | 1       | 1          | 2      |
-- | 2  | 2       | 2          | 5      |
-- | 3  | 1       | 3          | 1      |
-- | 4  | 3       | 4          | 3      |
-- | 5  | 5       | 5          | 0      |
-- | 6  | 5       | 6          | 4      |
-- | 7  | 5       | 2          | 2      | 

SELECT u.name, SUM(o.amount * p.price) AS totalPrice
FROM users u
JOIN orders o ON u.id = o.user_id
JOIN products p ON p.id = o.product_id
GROUP BY u.id, u.name
ORDER BY totalPrice DESC
LIMIT 1;