-- OPERADOR AND OR NOT
SELECT * FROM customer
WHERE store_id = 1 AND active = 0

SELECT * FROM payment
WHERE staff_id = 1 AND amount = 1.99 AND customer_id > 10
-- WHERE staff_id = 1 OR amount = 1.99
-- WHERE NOT staff_id = 1 AND amount = 1.99 


-- OPERADOR IN:
SELECT * 
FROM address
WHERE district IN ('Alberta', 'Texas', 'California')

-- OPERADOR Between:
SELECT *
FROM payment
WHERE amount BETWEEN 1.99  AND 3.99

-- OPERADOR LIKE
SELECT * 
FROM actor
WHERE first_name LIKE 'A%'

-- OPERADOR IS NULL:
SELECT * 
FROM address 
WHERE address2 IS NULL

-- OPERADOR LIMIT:
SELECT * 
FROM actor
LIMIT 10

-- OPERADOR REGEXP:
SELECT * 
FROM actor
WHERE first_name REGEXP '^a'