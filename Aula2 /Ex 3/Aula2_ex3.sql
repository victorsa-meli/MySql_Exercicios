/* 

Crie um banco de dados para um serviço de uma Farmácia. O nome do Banco de dados deverá ter o seguinte nome db_farmacia_bem_estar. 
O sistema trabalhará com as informações dos produtos comercializados pela empresa. O sistema trabalhará com 2 tabelas tb_produtos e tb_categorias, que deverão estar relacionadas.

Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar os produtos.
Crie a tabela tb_produtos e determine 4 atributos, além da Chave Primária, relevantes aos produtos da farmácia.
Não esqueça de criar a Foreign Key da tabela tb_categorias na tabela tb_produtos.
Insira 5 registros na tabela tb_categorias.
Insira 8 registros na tabela tb_produtos, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias.
Faça um SELECT que retorne todes os produtos cujo valor seja maior do que R$ 50,00.
Faça um SELECT que retorne todes os produtos cujo valor esteja no intervalo R$ 5,00 e R$ 60,00.
Faça um SELECT utilizando o operador LIKE, buscando todes os produtos que possuam a letra C no atributo nome.
Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias.
Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias, onde traga apenas os produtos que pertençam a uma categoria específica (Exemplo: Todes os produtos que pertencem a categoria cosméticos).
Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.


*/


DROP DATABASE db_farmacia_bem_estar;

CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
id bigint auto_increment,
tipo varchar(50) not null,
receita boolean not null,
primary key (id)
);

INSERT INTO tb_categorias(tipo, receita)
VALUES ("COSMETICO", false);

INSERT INTO tb_categorias(tipo, receita)
VALUES ("R-SPM", false);


INSERT INTO tb_categorias(tipo,receita)
VALUES ("R-CPM", true);


CREATE TABLE tb_produtos(
id bigint auto_increment,
nome varchar (50)not null,
preco decimal (4,2) not null,
categorias_id bigint,
primary key (id),
foreign key (categorias_id) references tb_categorias(id)
);

-- COSMETICOS
INSERT INTO tb_produtos (nome, preco, categorias_id)
VALUES ("Creme de Pele", 55.90, 1);

INSERT INTO tb_produtos (nome, preco, categorias_id)
VALUES ("Creme de Cabelo", 88.90, 1);

INSERT INTO tb_produtos (nome, preco, categorias_id)
VALUES ("Perfume", 77.90, 1);


INSERT INTO tb_produtos (nome, preco, categorias_id)
VALUES ("Agua Oxigenada", 15.90, 1);


INSERT INTO tb_produtos (nome, preco, categorias_id)
VALUES ("Batom", 7.90, 1);


-- REMEDIOS SEM PRESCICAO MEDICA

INSERT INTO tb_produtos (nome, preco, categorias_id)
VALUES ("Neusaldina", 66.90, 2);

INSERT INTO tb_produtos (nome, preco, categorias_id)
VALUES ("Paracetamol", 54.90, 2);

INSERT INTO tb_produtos (nome, preco, categorias_id)
VALUES ("Lufttal", 45.90, 2);

INSERT INTO tb_produtos (nome, preco, categorias_id)
VALUES ("Bicabornato de Sodio", 45.90, 2);


INSERT INTO tb_produtos (nome, preco, categorias_id)
VALUES ("Depacote", 45.90, 2);










-- REMEDIOS COM PRESCRISCAO MEDICA

INSERT INTO tb_produtos (nome, preco, categorias_id)
VALUES ("Gadernal", 55.90, 3);

INSERT INTO tb_produtos (nome, preco, categorias_id)
VALUES ("Ritalina", 99.90, 3);

INSERT INTO tb_produtos (nome, preco, categorias_id)
VALUES ("Morfina", 60.90, 3);

/*
Faça um SELECT que retorne todes os produtos cujo valor seja maior do que R$ 50,00.
Faça um SELECT que retorne todes os produtos cujo valor esteja no intervalo R$ 5,00 e R$ 60,00.
Faça um SELECT utilizando o operador LIKE, buscando todes os produtos que possuam a letra C no atributo nome.
Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias.
Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias, onde traga apenas os produtos que pertençam a uma categoria específica (Exemplo: Todes os produtos que pertencem a categoria cosméticos).

*/

select * from tb_produtos where preco > 50.00;
select * from tb_produtos where preco IN (54.90, 77.90, 99.90);

select * from tb_produtos where preco between 5.00 and 60.00;


select * from tb_produtos where nome like ("%c%");

select * from tb_produtos inner join tb_categorias on tb_produtos.categorias_id = tb_categorias.id;

select * from tb_produtos inner join tb_categorias on tb_produtos.categorias_id = tb_categorias.id and tipo = "COSMETICO" ;

















