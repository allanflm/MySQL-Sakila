SELECT 
    customer_id, 
    amount,
    amount - (amount * 0.10) AS '10 % de Desconto'
FROM payment
WHERE customer_id = 1