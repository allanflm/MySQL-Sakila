-- CRAINDO UMA DATABASE:

USE carros;

CREATE TABLE marcas (
	id INT NOT NULL AUTO_INCREMENT,
	nome_marca VARCHAR(255) NOT NULL,
    
    PRIMARY KEY (id)
);

-- Atualizando colunas dentro de uma tabela:
ALTER TABLE marcas ADD origem VARCHAR(255);

-- Criando a tabela de inventario:
CREATE TABLE inventario(
	id INT NOT NULL AUTO_INCREMENT,
    modelo_carro VARCHAR(255) NOT NULL,
    transmissao VARCHAR(255) NOT NULL,
    motor VARCHAR(255) NOT NULL,
    combustivel VARCHAR(255) NOT NULL,
    marcas_id INT NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY (marcas_id) REFERENCES marcas(id)
);

-- Criando a tabela de clientes:
CREATE TABLE clientes(
	id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    sobrenome VARCHAR(255) NOT NULL,
	endereco VARCHAR(255) NOT NULL,
    
    PRIMARY KEY(id)
);

-- Data Types:
-- https://www.w3schools.com/sql/sql_datatypes.asp

-- Inserindo dados nas tabelas:
INSERT INTO marcas (nome_marca) VALUES
('Toyota'),
('Honda'),
('Ford'),
('Chevrolet'),
('Volkswagen');

UPDATE marcas SET origem = 'Japão' WHERE id = 1;
UPDATE marcas SET origem = 'Japão' WHERE id = 2;
UPDATE marcas SET origem = 'Estados Unidos' WHERE id = 3;
UPDATE marcas SET origem = 'Estados Unidos' WHERE id = 4;
UPDATE marcas SET origem = 'Alemanha' WHERE id = 5;

INSERT INTO inventario (modelo_carro, transmissao, motor, combustivel, marcas_id) VALUES
('Corolla', 'Automático', '2.0', 'Gasolina', 1),
('Civic', 'Manual', '2.0', 'Gasolina', 2),
('Focus', 'Automático', '2.0', 'Flex', 3),
('Onix', 'Manual', '1.0', 'Flex', 4),
('Golf', 'Automático', '1.4 TSI', 'Gasolina', 5),
('Hilux', 'Automático', '2.8 Turbo Diesel', 'Diesel', 1);


INSERT INTO clientes (nome, sobrenome, endereco) VALUES
('João', 'Silva', 'Rua das Flores, 123'),
('Maria', 'Oliveira', 'Av. Brasil, 456'),
('Carlos', 'Santos', 'Rua Central, 789'),
('Ana', 'Pereira', 'Av. Paulista, 1000'),
('Lucas', 'Costa', 'Rua do Comércio, 321');














