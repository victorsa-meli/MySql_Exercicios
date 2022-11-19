/*

Crie um banco de dados para uma plataforma de Cursos Online (EAD). 
O nome do Banco de dados deverá ter o seguinte nome db_curso_da_minha_vida. 
O sistema trabalhará com as informações dos produtos comercializados pela empresa. 
O sistema trabalhará com 2 tabelas tb_cursos e tb_categorias, que deverão estar relacionadas.

Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar os produtos.
Crie a tabela tb_cursos e determine 4 atributos, além da Chave Primária, relevantes aos produtos da farmácia.
Não esqueça de criar a Foreign Key da tabela tb_categorias na tabela tb_cursos.
Insira 5 registros na tabela tb_categorias.
Insira 8 registros na tabela tb_cursos, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias.
Faça um SELECT que retorne todes os cursos cujo valor seja maior do que R$ 500,00.
Faça um SELECT que retorne todes os cursos cujo valor esteja no intervalo R$ 600,00 e R$ 1000,00.
Faça um SELECT utilizando o operador LIKE, buscando todes os cursos que possuam a letra J no atributo nome.
Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_cursos com os dados da tabela tb_categorias.
Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_cursos com os dados da tabela tb_categorias, onde traga apenas os produtos que pertençam a uma categoria específica (Exemplo: Todes os cursos que pertencem a categoria Java).

*/


DROP DATABASE db_meu_curso_minha_vida;

CREATE DATABASE db_meu_curso_minha_vida;


USE db_meu_curso_minha_vida;


CREATE TABLE tb_categorias (
id bigint auto_increment,
tipo varchar(50),
area varchar(50),
primary key (id)
);
INSERT INTO tb_categorias(tipo, area)
VALUES ("ONLINE","TECNOLOGIA");

INSERT INTO tb_categorias(tipo, area)
VALUES ("ONLINE","AGRONOMIA E ECONOMIA");

INSERT INTO tb_categorias(tipo, area)
VALUES ("ONLINE","ENGENHARIA");

INSERT INTO tb_categorias(tipo, area)
VALUES ("PRESENCIAL","ECONOMIA E POLITICA");

INSERT INTO tb_categorias(tipo, area)
VALUES ("PRESENCIAL","SOCIAL E CIVIL");
 


CREATE TABLE tb_cursos (
id bigint auto_increment,
nome varchar(50),
cargaH time,
valorM decimal (8, 2),
dip boolean,
tipoFormatura varchar(50),
cat_id bigint,
primary key (id),
foreign key (cat_id) references tb_categorias(id)
);


-- CURSOS DE TECNOLOGIA
INSERT INTO tb_cursos(nome, cargaH, valorM, dip, tipoFormatura, cat_id)
VALUES ("Desenvolvedor de Softwares", "40:00:00", 900.20, true, "bacharelado", 1);

INSERT INTO tb_cursos(nome, cargaH, valorM, dip, tipoFormatura, cat_id)
VALUES ("Ciencia da Computacao", "40:00:00", 620.90, true, "bacharelado", 1);

INSERT INTO tb_cursos(nome, cargaH, valorM, dip, tipoFormatura, cat_id)
VALUES ("Analista de Sistemas", "20:00:00", 150.00, true, "Tecnologo", 1);

-- AGRONOMIA 

INSERT INTO tb_cursos(nome, cargaH, valorM, dip, tipoFormatura, cat_id)
VALUES ("Climatologia e Agrometeorologia", "40:00:00", 900.20, true, "bacharelado", 2);

INSERT INTO tb_cursos(nome, cargaH, valorM, dip, tipoFormatura, cat_id)
VALUES ("Geoprocessamento e Cartografia", "40:00:00", 620.90, true, "bacharelado", 2);

INSERT INTO tb_cursos(nome, cargaH, valorM, dip, tipoFormatura, cat_id)
VALUES ("ABiotecnologia", "20:00:00", 150.00, true, "Tecnologo", 2);


-- EGENHARIAS

INSERT INTO tb_cursos(nome, cargaH, valorM, dip, tipoFormatura, cat_id)
VALUES ("Egenharia Civil", "40:00:00", 900.20, true, "bacharelado", 3);

INSERT INTO tb_cursos(nome, cargaH, valorM, dip, tipoFormatura, cat_id)
VALUES ("Egenharia Mecanica", "40:00:00", 620.90, true, "bacharelado", 3);

INSERT INTO tb_cursos(nome, cargaH, valorM, dip, tipoFormatura, cat_id)
VALUES ("Egenharia  Ambiental", "20:00:00", 150.00, true, "Tecnologo", 3);

-- ECONOMIA E POLITICA

INSERT INTO tb_cursos(nome, cargaH, valorM, dip, tipoFormatura, cat_id)
VALUES ("Economia", "40:00:00", 900.20, true, "bacharelado", 4);

INSERT INTO tb_cursos(nome, cargaH, valorM, dip, tipoFormatura, cat_id)
VALUES ("Ciencias Politicas", "40:00:00", 620.90, true, "bacharelado", 4);

INSERT INTO tb_cursos(nome, cargaH, valorM, dip, tipoFormatura, cat_id)
VALUES ("Politicas Publicas", "20:00:00", 150.00, true, "Tecnologo", 4);



-- SOCIAL E CIVIL

INSERT INTO tb_cursos(nome, cargaH, valorM, dip, tipoFormatura, cat_id)
VALUES ("Sociologia", "40:00:00", 900.20, true, "bacharelado", 5);

INSERT INTO tb_cursos(nome, cargaH, valorM, dip, tipoFormatura, cat_id)
VALUES ("Psicologia", "40:00:00", 620.90, true, "bacharelado", 5);

INSERT INTO tb_cursos(nome, cargaH, valorM, dip, tipoFormatura, cat_id)
VALUES ("Recursos Humanos", "20:00:00", 150.00, true, "Tecnologo", 5);


INSERT INTO tb_cursos(nome, cargaH, valorM, dip, tipoFormatura, cat_id)
VALUES ("Direito", "40:00:00", 900.20, true, "bacharelado", 5);

INSERT INTO tb_cursos(nome, cargaH, valorM, dip, tipoFormatura, cat_id)
VALUES ("Filosofia", "40:00:00", 620.90, true, "bacharelado", 5);

INSERT INTO tb_cursos(nome, cargaH, valorM, dip, tipoFormatura, cat_id)
VALUES ("Historia", "20:00:00", 150.00, true, "Tecnologo", 5);



INSERT INTO tb_cursos(nome, cargaH, valorM, dip, tipoFormatura, cat_id)
VALUES ("Pedagogia", "40:00:00", 900.20, true, "bacharelado", 5);

INSERT INTO tb_cursos(nome, cargaH, valorM, dip, tipoFormatura, cat_id)
VALUES ("Aquacultura", "40:00:00", 620.90, true, "bacharelado", 5);

INSERT INTO tb_cursos(nome, cargaH, valorM, dip, tipoFormatura, cat_id)
VALUES ("Assistencia social", "20:00:00", 150.00, true, "Tecnologo", 5);






/*
Faça um SELECT que retorne todes os cursos cujo valor seja maior do que R$ 500,00.
Faça um SELECT que retorne todes os cursos cujo valor esteja no intervalo R$ 600,00 e R$ 1000,00.
Faça um SELECT utilizando o operador LIKE, buscando todes os cursos que possuam a letra J no atributo nome.
Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_cursos com os dados da tabela tb_categorias.
Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_cursos com os dados da tabela tb_categorias, 
*/


SELECT * FROM tb_cursos WHERE valorM > 500.00;

SELECT * FROM tb_cursos WHERE valorM BETWEEN 100.00 AND 450.00;

SELECT * FROM tb_cursos WHERE nome LIKE ("%W%");

SELECT * FROM tb_cursos inner join tb_categorias on tb_cursos.cat_id = tb_categorias.id;


SELECT * FROM tb_cursos inner join tb_categorias on tb_cursos.cat_id = tb_categorias.id AND area = "TECNOLOGIA";
















