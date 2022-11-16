-- Crie um banco de dados para um e-commerce, onde o sistema trabalhará com as informações dos produtos deste e-commerce. 

CREATE DATABASE db_ecomerce;

USE db_ecomerce;


-- Crie uma tabela de produtos e determine 5 atributos relevantes dos produtos para se trabalhar com o serviço deste e-commerce.

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    quantidade INT,
    data_validade DATE,
    preco DECIMAL NOT NULL,
    marca VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);


-- Insira nesta tabela no mínimo 8 dados (registros).

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco, marca) 
VALUES("Arroz", 100, "2023-01-01", 15.00, "Tiaju");

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco, marca) 
VALUES("Feijao", 100, "2023-01-01", 10.00, "Camil");


INSERT INTO tb_produtos(nome, quantidade, data_validade, preco, marca) 
VALUES("Farinha", 100, "2023-01-01", 5.00, "Vilma");


INSERT INTO tb_produtos(nome, quantidade, data_validade, preco, marca) 
VALUES("Coca-Cola", 100, "2023-01-01", 6.00, "Coca-Cola");


INSERT INTO tb_produtos(nome, quantidade, data_validade, preco, marca) 
VALUES("Achocolatado", 100, "2023-01-01", 700.00, "Nestle");



INSERT INTO tb_produtos(nome, quantidade, data_validade, preco, marca) 
VALUES("Suco de Uva", 100, "2023-01-01", 7.00, "DelVale");


INSERT INTO tb_produtos(nome, quantidade, data_validade, preco, marca) 
VALUES("Queijo Parmesao Ralado", 100, "2023-01-01", 700.00, "Faixa Azul");


INSERT INTO tb_produtos(nome, quantidade, data_validade, preco, marca) 
VALUES("Cafe", 100, "2023-01-01", 13.00, "Tres Corações");


-- Faça um SELECT que retorne todes os produtos com o valor maior do que 500.

SELECT db_ecomerce FROM db_ecomerce WHERE preco > 500;

-- Faça um SELECT que retorne todes os produtos com o valor menor do que 500.

SELECT db_ecomerce FROM db_ecomerce WHERE preco < 500;

-- Ao término atualize um registro desta tabela através de uma query de atualização.


UPDATE tb_produtos SET preco = 15.00 WHERE ID = 8; 













