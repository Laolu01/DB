--Question 4
SELECT EXTRACT(MONTH FROM when_created) AS month_index, sum(amount), COUNT(atx_id) AS agent_transaction_count
        FROM agent_transactions
        WHERE EXTRACT(YEAR FROM when_created) = 2018
        GROUP BY EXTRACT(MONTH FROM when_created);