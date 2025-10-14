# 🎬 Projeto Sakila - Banco de Dados MySQL

Este projeto utiliza o banco de dados **Sakila**, um banco exemplo fornecido pelo **MySQL**, que contém informações sobre filmes, atores, categorias, clientes e locações — ideal para estudos e testes de consultas SQL.

## 💡 Sobre o Projeto
O objetivo deste projeto é explorar o banco de dados **Sakila**, praticando consultas SQL, relacionamentos entre tabelas e manipulação de dados.  
Ele serve como base para aprendizado e demonstração de uso do **MySQL** em um cenário realista de locadora de filmes.

## 🛠️ Tecnologias Utilizadas
- **MySQL** (com o banco `sakila`)
- **SQL**

## 🗃️ Banco de Dados
O projeto utiliza o banco `sakila`, que já vem pronto com tabelas relacionadas a filmes, atores, clientes e locações.  
Para importar o banco localmente, basta executar:

```bash
mysql -u root -p < sakila-schema.sql
mysql -u root -p < sakila-data.sql
```
🚀 Como Executar

Clone este repositório:
```bash
git clone https://github.com/SEU_USUARIO/NOME_DO_PROJETO.git
```

Acesse a pasta do projeto:
```bash
cd NOME_DO_PROJETO
```

Conecte-se ao MySQL e use o banco sakila:
```bash
USE sakila;
```

Execute suas consultas ou scripts SQL.

📚 Referência

O banco Sakila é distribuído oficialmente pelo MySQL.
Mais detalhes: https://dev.mysql.com/doc/sakila/en/
