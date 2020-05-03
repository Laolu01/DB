--Question 9
SELECT agents.city, SUM(transfers.send_amount_scalar) AS transaction_scalar,
        COUNT(agent_transactions.amount) AS transaction_volume, transfers.kind AS transfer_kind,
        COUNT(DISTINCT(transfers.transfer_id)) AS unique_senders
        FROM transfers, agents, agent_transactions
        WHERE (agent_transactions.when_created >= DATE_TRUNC('week', CURRENT_TIMESTAMP - interval '1 week'))
        AND agent_transactions.when_created < DATE_TRUNC('week', CURRENT_TIMESTAMP)
        GROUP BY country, kind, city;