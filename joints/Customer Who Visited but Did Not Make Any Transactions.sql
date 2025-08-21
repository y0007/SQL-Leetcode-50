# Write your MySQL query statement below
SELECT customer_id, COUNT(*) as count_no_trans
FROM Visits v
left join transactions t 
on t.visit_id = v.visit_id
WHERE t.transaction_id is null
GROUP BY customer_id

