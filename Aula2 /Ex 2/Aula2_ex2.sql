/*

Crie um banco de dados para um serviço de uma Pizzaria. O nome do Banco de dados deverá ter o seguinte nome db_pizzaria_legal.
 O sistema trabalhará com as informações dos produtos comercializados pela empresa. O sistema trabalhará com 2 tabelas tb_pizzas e tb_categorias, que deverão estar relacionadas.


Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar as pizzas.
Crie a tabela tb_pizzas e determine 4 atributos, além da Chave Primária, relevantes aos produtos da pizzaria.
Não esqueça de criar a Foreign Key da tabela tb_categorias na tabela tb_pizzas.
Insira 5 registros na tabela tb_categorias.
Insira 8 registros na tabela tb_pizzas, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias.
Faça um SELECT que retorne todas as pizzas cujo valor seja maior do que R$ 45,00.
Faça um SELECT que retorne todas as pizzas cujo valor esteja no intervalo R$ 50,00 e R$ 100,00.
Faça um SELECT utilizando o operador LIKE, buscando todas as pizzas que possuam a letra M no atributo nome.
Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias.
Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias, onde traga apenas as pizzas que pertençam a uma categoria específica (Exemplo: Todas as pizzas que são doce).
Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.

*/

DROP DATABASE db_pizzaria_legal;

CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;


CREATE TABLE tb_categorias(
id bigint auto_increment,
tamanho varchar (50)not null,
centimetros int not null,
primary key(id)
);

INSERT INTO tb_categorias (tamanho, centimetros)
VALUES ("Brotinho", 10);

INSERT INTO tb_categorias (tamanho, centimetros)
VALUES ("Media", 15);


INSERT INTO tb_categorias (tamanho, centimetros)
VALUES ("Grande", 20);


INSERT INTO tb_categorias (tamanho, centimetros)
VALUES ("Gigante", 30);





CREATE TABLE tb_pizzas(
id bigint auto_increment,
nome varchar(50),
preco decimal (8,2),
categorias_id bigint,
primary key (id),
foreign key (categorias_id) references tb_categorias(id)
);


--  A MODA 

-- PIZZA BROTINHO 
INSERT INTO tb_pizzas (nome, preco, categorias_id)
VALUES ("A moda Brotinho", 9.99, 1);
-- PIZZA MEDIA
INSERT INTO tb_pizzas (nome, preco, categorias_id)
VALUES ("A moda Media", 14.99, 2);

-- PIZZA GRANDE
INSERT INTO tb_pizzas (nome, preco, categorias_id)
VALUES ("A moda Grande", 59.99, 3);


-- PIZZA GIGANTE
INSERT INTO tb_pizzas (nome, preco, categorias_id)
VALUES ("A moda Gigante", 69.99, 4);


-- CALABRESA 

-- PIZZA BROTINHO 
INSERT INTO tb_pizzas (nome, preco, categorias_id)
VALUES ("Calabresa Brotinho",  29.99, 1);
-- PIZZA MEDIA
INSERT INTO tb_pizzas (nome, preco, categorias_id)
VALUES ("Calabresa Media ", 54.99, 2);

-- PIZZA GRANDE
INSERT INTO tb_pizzas (nome, preco, categorias_id)
VALUES ("Calabresa Grande", 69.99, 3);


-- PIZZA GIGANTE
INSERT INTO tb_pizzas (nome, preco, categorias_id)
VALUES ("Calabresa Gigante ", 79.99, 4);



-- PORTUGUESA

-- PIZZA BROTINHO 
INSERT INTO tb_pizzas (nome, preco, categorias_id)
VALUES ("Portuguesa Brotinho", 19.99, 1);
-- PIZZA MEDIA
INSERT INTO tb_pizzas (nome, preco, categorias_id)
VALUES ("Portuguesa Media", 24.99, 2);

-- PIZZA GRANDE
INSERT INTO tb_pizzas (nome, preco, categorias_id)
VALUES ("Portuguesa Grande", 49.99, 3);


-- PIZZA GIGANTE
INSERT INTO tb_pizzas (nome, preco, categorias_id)
VALUES ("Portuguesa Gigante", 69.99, 4);



-- --------------------------------------------------
-- Faça um SELECT que retorne todas as pizzas cujo valor seja maior do que R$ 45,00.

select * from tb_pizzas where preco > 45.00;


-- Faça um SELECT que retorne todas as pizzas cujo valor esteja no intervalo R$ 50,00 e R$ 100,00.


select * from tb_pizzas where preco between 50.00 and 100.00;

-- Faça um SELECT utilizando o operador LIKE, buscando todas as pizzas que possuam a letra M no atributo nome.

select * from tb_pizzas where nome like ("%m%");


-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias.

select * from tb_pizzas inner join tb_categorias on tb_pizzas.categorias_id = tb_categorias.id;


-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias, onde traga apenas as pizzas que pertençam a uma categoria específica (Exemplo: Todas as pizzas que são doce).
select * from tb_pizzas inner join tb_categorias on tb_pizzas.categorias_id = tb_categorias.id and tamanho = "Brotinho";







 










