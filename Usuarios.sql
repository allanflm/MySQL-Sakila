-- Visualizando a DB de usuários

-- USE mysql;
-- SELECT * FROM user;
SELECT * FROM mysql.user;

-- Criando usuário:
CREATE USER ana IDENTIFIED BY '1212';
CREATE USER joao@localhost IDENTIFIED BY '1212';
CREATE USER pricila@empresa.com IDENTIFIED BY '1212';

-- Removendo os Usuarios:

DROP USER pricila@empresa.com;

-- Recuperando a Senha de um usuário:
SET PASSWORD FOR joao@localhost = '4444';
-- SET PASSWORD = '1234';

-- Aplicando privilégios a usuários:

GRANT SELECT, INSERT, UPDATE, DELETE 
ON sakila.*
TO ana;

SHOW GRANTS FOR ana;


-- Adicionando um ADMIN:
GRANT ALL
ON sakila.*
TO ana;

GRANT ALL
ON *.*
TO joao@localhost;

-- Removendo privilégios a usuários:
-- REVOKE
CREATE USER priscila IDENTIFIED BY '1212';

SHOW GRANTS FOR priscila;

GRANT SELECT, INSERT, UPDATE 
ON sakila.*
TO priscila;

REVOKE UPDATE 
ON sakila.*
FROM priscila;






