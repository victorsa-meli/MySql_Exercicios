/*
Crie um banco de dados para um serviço de uma loja de Material de Construção. 
O nome do Banco de dados deverá ter o seguinte nome db_construindo_vidas. 
O sistema trabalhará com as informações dos produtos comercializados pela empresa. 
O sistema trabalhará com 2 tabelas tb_produtos e tb_categorias, que deverão estar relacionadas.

Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar os produtos.
Crie a tabela tb_produtos e determine 4 atributos, além da Chave Primária, relevantes aos produtos da farmácia.
Não esqueça de criar a Foreign Key da tabela tb_categorias na tabela tb_produtos.
Insira 5 registros na tabela tb_categorias.
Insira 8 registros na tabela tb_produtos, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias.
Faça um SELECT que retorne todes os produtos cujo valor seja maior do que R$ 100,00.
Faça um SELECT que retorne todes os produtos cujo valor esteja no intervalo R$ 70,00 e R$ 150,00.
Faça um SELECT utilizando o operador LIKE, buscando todes os produtos que possuam a letra C no atributo nome.
Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias.
Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias, onde traga apenas os produtos que pertençam a uma categoria específica (Exemplo: Todes os produtos que pertencem a categoria hidráulica).




*/ 


DROP DATABASE db_construindo_vidas;

CREATE DATABASE db_construindo_vidas;

USE db_construindo_vidas;

CREATE TABLE tb_categoria (
id bigint auto_increment,
tipo varchar(50) not null, 
primary key (id)
);

insert into tb_categoria(tipo)
VALUES("Hidraulica");

insert into tb_categoria(tipo)
VALUES("Serralheria");

insert into tb_categoria(tipo)
VALUES("Mecanica");

insert into tb_categoria(tipo)
VALUES("Material de Construcao");

insert into tb_categoria(tipo)
VALUES("Jardinagem");






CREATE TABLE tb_produto (
id bigint auto_increment, 
nome varchar(50)not null,
preco decimal(8, 2),
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);


INSERT INTO tb_produto (nome, preco, categoria_id)
VALUES ("Ferramentas exemplo hidraulica ", 150.00,1); 

INSERT INTO tb_produto (nome, preco, categoria_id)
VALUES ("Ferramentas exemplo Serralheria", 300.00, 2); 

INSERT INTO tb_produto (nome, preco, categoria_id)
VALUES ("Ferramentas exemplo Mecanica ", 400.00, 3); 

INSERT INTO tb_produto (nome, preco, categoria_id)
VALUES ("Ferramentas exemplo Construcao ", 50.00, 4); 

INSERT INTO tb_produto (nome, preco, categoria_id)
VALUES ("Ferramentas exemplo Jardinagem", 500.00, 5); 


select * from tb_produto order by nome;

select * from tb_produto WHERE preco > 150.00;

select * from tb_produto WHERE nome LIKE "%c%";

select * from tb_produto INNER JOIN tb_categoria ON tb_produto.categoria_id = tb_categoria.id;



select * from tb_produto INNER JOIN tb_categoria ON tb_produto.categoria_id = tb_categoria.id AND tipo = "Hidraulica";














