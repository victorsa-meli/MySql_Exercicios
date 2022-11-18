-- Crie um banco de dados para um serviço de um Games Online. O nome do Banco de dados deverá ter o seguinte nome db_generation_game_online.
-- O sistema trabalhará com as informações dos personagens do jogo. 
-- O sistema trabalhará com 2 tabelas tb_personagens e tb_classes, que deverão estar relacionadas.
-- Crie a tabela tb_classes e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar os personagens do Game Online.
-- Crie a tabela tb_personagens e determine 4 atributos, além da Chave Primária, relevantes aos personagens do Game Online.
-- Não esqueça de criar a Foreign Key da tabela tb_classes na tabela tb_personagens.
-- Insira 5 registros na tabela tb_classes.
-- Insira 8 registros na tabela tb_personagens, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_classes.
-- Faça um SELECT que retorne todes os personagens cujo poder de ataque seja maior do que 2000.
-- Faça um SELECT que retorne todes os personagens cujo poder de defesa esteja no intervalo 1000 e 2000.
-- Faça um SELECT utilizando o operador LIKE, buscando todes os personagens que possuam a letra C no atributo nome.
-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes.
-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes, 
-- onde traga apenas os personagens que pertençam a uma classe específica (Exemplo: Todes os personagens da classe dos arqueiros).
-- Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal, 
-- no repositório que você criou sobre Banco de dados.


-- Apagar Banco de Dados db_generation_game_online;
DROP DATABASE db_generation_game_online;


-- Recriar o Banco de dados db_quitanda
CREATE DATABASE db_generation_game_online;

-- Selecionar o Banco de Dados db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes(
id bigint auto_increment,
profissao varchar(10)not null,
primary key (id)

 );
 
 -- Insere dados na tabela tb_classes as profissoes.
INSERT INTO tb_classes (profissao)
VALUES ("Arqueiro");

INSERT INTO tb_classes (profissao)
VALUES ("Cavaleiro");

INSERT INTO tb_classes (profissao)
VALUES ("Druida");

INSERT INTO tb_classes (profissao)
VALUES ("Bruxo");
-- ---------------------------------------------- -------------  - - - ------------------
CREATE TABLE tb_personagens(
id bigint auto_increment,
nome varchar (100),
sexo varchar (1),
lvl int, 
attack int,
defense int,
classes_id bigint,
primary key (id),
foreign key (classes_id) references tb_classes(id) 
);


-- Insere dados na tabela tb_personagens
INSERT INTO tb_personagens (nome, sexo, lvl, attack, defense, classes_id)
VALUES ("A Personagem1", "M",10, 5000, 1500, 1);  -- classes_id  - > 1 = Arqueiro. 2 = Cavaleiro. 3 = Druida. 4 = Bruxo.

INSERT INTO tb_personagens (nome, sexo, lvl, attack, defense, classes_id)
VALUES ("B Personagem2", "F",20, 10000, 3000, 1);  -- classes_id  - > 1 = Arqueiro. 2 = Cavaleiro. 3 = Druida. 4 = Bruxo.

INSERT INTO tb_personagens (nome, sexo, lvl, attack, defense, classes_id)
VALUES ("C Personagem3", "F",10, 2000, 5000, 2);  -- classes_id  - > 1 = Arqueiro. 2 = Cavaleiro. 3 = Druida. 4 = Bruxo.

INSERT INTO tb_personagens (nome, sexo, lvl, attack, defense, classes_id)
VALUES ("1 Personagem4", "M",20, 4000, 10000, 2);  -- classes_id  - > 1 = Arqueiro. 2 = Cavaleiro. 3 = Druida. 4 = Bruxo.

INSERT INTO tb_personagens (nome, sexo, lvl, attack, defense, classes_id)
VALUES ("2 Personagem5", "F",20, 15000, 3000, 3);  -- classes_id  - > 1 = Arqueiro. 2 = Cavaleiro. 3 = Druida. 4 = Bruxo.

INSERT INTO tb_personagens (nome, sexo, lvl, attack, defense, classes_id)
VALUES ("3 Personagem6", "M",20, 8000, 5000, 3);  -- classes_id  - > 1 = Arqueiro. 2 = Cavaleiro. 3 = Druida. 4 = Bruxo.

INSERT INTO tb_personagens (nome, sexo, lvl, attack, defense, classes_id)
VALUES ("Personagem7 X", "F",20, 8000, 5000, 4);  -- classes_id  - > 1 = Arqueiro. 2 = Cavaleiro. 3 = Druida. 4 = Bruxo.

INSERT INTO tb_personagens (nome, sexo, lvl, attack, defense, classes_id)
VALUES ("Personagem8 Y", "F",10, 8000, 5000, 4);  -- classes_id  - > 1 = Arqueiro. 2 = Cavaleiro. 3 = Druida. 4 = Bruxo.

INSERT INTO tb_personagens (nome, sexo, lvl, attack, defense, classes_id)
VALUES ("Personagem9 Z", "M",1, 1, 1, 2);  -- classes_id  - > 1 = Arqueiro. 2 = Cavaleiro. 3 = Druida. 4 = Bruxo.





-- Visualiza todos os dados da tabela tb_personagens







/*  TODOS OS SELECTS
SELECT * FROM tb_classes order by profissao DESC; -- FILTRA AS CLASSES POR NOME
SELECT * FROM tb_personagens WHERE attack IN (5000,10000,8000); -- FILTRA OS PERSONAGENS COM ATAQUE COM OS PARAMETROS INFORMADO ( X , y , Z ...)
SELECT * FROM tb_personagens WHERE defense BETWEEN 1000 AND 5000; -- FILTRA PERSONAGENS COM DEFESA NO INTERVALOR INFORMADO ( X AND Y)
SELECT * FROM tb_classes; -- FILTRA AS CLASSES.
SELECT * FROM tb_personagens order by nome;   -- FILTRA OS PERSONAGEM PELO NOME EM ORDEM ALFABETICA
SELECT * FROM tb_personagens order by nome DESC ;  -- FILTRA OS PERSONAGEM PELO NOME EM ORDEM ALFABETICA DECRESCENTE
SELECT * FROM tb_personagens WHERE nome LIKE "A%"; -- FILTRA APENAS NOMES QUE COMECAM COM A LETRA  "A".
SELECT * FROM tb_personagens WHERE nome LIKE "%n%"; -- FILTRA TODOS OS NOMES QUE POSSUAM A EM ALGUMA PARTE DO NOME  "A".
SELECT * FROM tb_personagens WHERE nome LIKE "%6"; -- FILTRA APENAS NOMES QUE TERMINAM COM O NUMERO  "6".
SELECT * FROM tb_personagens WHERE nome LIKE "%X"; -- FILTRA APENAS NOMES QUE TERMINAM COM A LETRA "x".
SELECT * FROM tb_personagens WHERE nome LIKE "%Y"; -- FILTRA APENAS NOMES QUE TERMINAM COM A LETRA "y".
SELECT * FROM tb_personagens WHERE nome LIKE "%Z"; -- FILTRA APENAS NOMES QUE TERMINAM COM A LETRA "z".
*/

-- select * from tb_personagens order by nome;


/*  SELECTS COM INNER JOIN
Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes.
Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes, onde traga apenas os personagens que pertençam a uma classe específica (Exemplo: Todes os personagens da classe dos arqueiros).




*/


SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classes_id = tb_classes.id AND tb_classes.id = 1;




































 
 












