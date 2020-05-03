--Question 10
SELECT transfers.source_wallet_id, transfers send_amount_scalar from transfers
		WHERE send_amount_currency = 'CFA'
		AND send_amount_scalar > 10000000;		