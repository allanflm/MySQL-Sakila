USE sakila;
SELECT * FROM language;

INSERT INTO language
VALUES 
	(DEFAULT, 'Portuguese', '2025-12-17 05:02:19'),
	(DEFAULT, 'Spanish', '2010-12-17 05:02:19'),
    (DEFAULT, 'Polish', '2012-12-17 05:02:19');


SELECT * FROM sakila.city;

INSERT INTO country
VALUES 
	(default, 'Brasil 02', '2035-02-15 04:44:00');
    
INSERT INTO city
VALUES 
	(default, 'Sao Paulo2', last_insert_id(),'2034-02-17 04:44:00');
    
    
-- backup da tabela

CREATE TABLE payment_backup AS
SELECT * FROM payment;

SELECT * FROM payment_backup;

-- Atualizando um valor

SELECT * FROM payment;

UPDATE payment 
SET 
	amount =  15.99
WHERE payment_id = 1;

-- Deletar um valor

SELECT * FROM payment;

DELETE FROM payment
WHERE payment_id = 1001;



    
    