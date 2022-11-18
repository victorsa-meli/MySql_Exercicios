/* 
Crie um banco de dados para um serviço de um Açougue ou de um Hortifruti. 
O nome do Banco de dados deverá ter o seguinte nome db_cidade_das_carnes ou cidade_dos_vegetais. 
O sistema trabalhará com as informações dos produtos comercializados pela empresa. 
O sistema trabalhará com 2 tabelas tb_produtos e tb_categorias, que deverão estar relacionadas.


Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar os produtos.
Crie a tabela tb_produtos e determine 4 atributos, além da Chave Primária, relevantes aos produtos da farmácia.
Não esqueça de criar a Foreign Key da tabela tb_categorias na tabela tb_produtos.
Insira 5 registros na tabela tb_categorias.
Insira 8 registros na tabela tb_produtos, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias.
Faça um SELECT que retorne todes os produtos cujo valor seja maior do que R$ 50,00.
Faça um SELECT que retorne todes os produtos cujo valor esteja no intervalo R$ 50,00 e R$ 150,00.
Faça um SELECT utilizando o operador LIKE, buscando todes os produtos que possuam a letra C no atributo nome.
Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias.
Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias, onde traga apenas os produtos que pertençam a uma categoria específica (Exemplo: Todes os produtos que pertencem a categoria aves ou frutas).
Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.

*/


DROP DATABASE db_cidade_dos_vegetais;

CREATE DATABASE db_cidade_dos_vegetais;

USE db_cidade_dos_vegetais;

CREATE TABLE tb_categorias(
id bigint auto_increment,
tipo varchar(50),
tipoVenda varchar(50),
primary key (id)
);

INSERT INTO tb_categorias(tipo, tipoVenda)
VALUES ("Fruta", "Atacado");

INSERT INTO tb_categorias(tipo, tipoVenda)
VALUES ("Fruta", "Varejo");


INSERT INTO tb_categorias(tipo, tipoVenda)
VALUES ("Legumes", "Atacado");

INSERT INTO tb_categorias(tipo, tipoVenda)
VALUES ("Legumes", "Varejo");


INSERT INTO tb_categorias(tipo, tipoVenda)
VALUES ("Produtos Diversos", "Atacado");

INSERT INTO tb_categorias(tipo, tipoVenda)
VALUES ("Produtos Diversos", "Verejo");


CREATE TABLE tb_produtos(
id bigint auto_increment,
nome varchar (50)not null,
preco decimal (8,2) not null,
categorias_id bigint,
primary key (id),
foreign key (categorias_id) references tb_categorias(id)
);


-- FRUTAS 
INSERT INTO tb_produtos(nome, preco, categorias_id)
VALUES ("Uva", 10.00, 1);

INSERT INTO tb_produtos(nome, preco, categorias_id)
VALUES ("Uva", 15.00, 2);


INSERT INTO tb_produtos(nome, preco, categorias_id)
VALUES ("Pera", 10.00, 1);

INSERT INTO tb_produtos(nome, preco, categorias_id)
VALUES ("Pera", 15.00, 2);


INSERT INTO tb_produtos(nome, preco, categorias_id)
VALUES ("Laranja", 10.00, 1);

INSERT INTO tb_produtos(nome, preco, categorias_id)
VALUES ("Laranja", 15.00, 2);


-- LEGUMES 
INSERT INTO tb_produtos(nome, preco, categorias_id)
VALUES ("Cenoura", 7.00, 3);

INSERT INTO tb_produtos(nome, preco, categorias_id)
VALUES ("Cenoura", 15.00, 4);


INSERT INTO tb_produtos(nome, preco, categorias_id)
VALUES ("Beterraba", 7.00, 3);

INSERT INTO tb_produtos(nome, preco, categorias_id)
VALUES ("Beterraba", 15.00, 4);


INSERT INTO tb_produtos(nome, preco, categorias_id)
VALUES ("Alface", 7.00, 3);

INSERT INTO tb_produtos(nome, preco, categorias_id)
VALUES ("Alface", 15.00, 4);

-- DIVERSOS

INSERT INTO tb_produtos(nome, preco, categorias_id)
VALUES ("Agua Mineral", 3.00, 5);

INSERT INTO tb_produtos(nome, preco, categorias_id)
VALUES ("Agua Mineral", 5.00, 6);


INSERT INTO tb_produtos(nome, preco, categorias_id)
VALUES ("Suco de uva", 7.00, 5);

INSERT INTO tb_produtos(nome, preco, categorias_id)
VALUES ("Suco de uva", 10.00, 6);


INSERT INTO tb_produtos(nome, preco, categorias_id)
VALUES ("Suco de Laranja", 7.00, 5);

INSERT INTO tb_produtos(nome, preco, categorias_id)
VALUES ("Suco de Laranja", 10.00, 6);




/*
Faça um SELECT que retorne todes os produtos cujo valor seja maior do que R$ 50,00.
Faça um SELECT que retorne todes os produtos cujo valor esteja no intervalo R$ 50,00 e R$ 150,00.
Faça um SELECT utilizando o operador LIKE, buscando todes os produtos que possuam a letra C no atributo nome.
Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias.
Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias, onde traga apenas os produtos que pertençam a uma categoria específica (Exemplo: Todes os produtos que pertencem a categoria aves ou frutas).
*/

select * from tb_produtos where preco > 13.00;


select * from tb_produtos where preco between 3.0 and 5.0;


select * from tb_produtos where nome LIKE ("%c%");


select * from tb_produtos inner join tb_categorias on tb_produtos.categorias_id = tb_categorias.id;



select * from tb_produtos inner join tb_categorias on tb_produtos.categorias_id = tb_categorias.id and tipo = "Fruta";















