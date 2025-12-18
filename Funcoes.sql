USE sakila;

SELECT 
	MAX(amount) AS Maior,
    MIN(amount) AS Menor,
    AVG(amount) AS 'Média de valores',
    SUM(amount) AS 'Total de vendas',
    COUNT(amount) AS 'Numero de vendas'
FROM payment
WHERE staff_id = 2;


-- Agrupando os clientes:

SELECT 
    cus.customer_id AS ID,
    cus.first_name AS Nome, 
    cus.last_name AS Sobrenome,
    SUM(amount) AS Total,
    COUNT(amount) AS Compras
FROM payment pay
JOIN customer cus USING(customer_id)  -- Ordenando clientes

GROUP BY customer_id
HAVING Total >= 150 AND Compras >= 35-- Filtrando os valores com o HAVING
ORDER BY Total DESC;









 