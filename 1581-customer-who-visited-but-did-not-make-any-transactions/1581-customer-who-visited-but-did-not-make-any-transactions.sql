# Write your MySQL query statement below
SELECT
    v.customer_id,
    COUNT(*) AS count_no_trans
From Visits v
LEFT JOIN Transactions t
ON v.visit_id = t.visit_id
WHERE t.transaction_id is NULL
Group BY v.customer_id;