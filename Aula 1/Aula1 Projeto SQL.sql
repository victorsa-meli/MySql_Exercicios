-- Crie um banco de dados para um serviço de RH de uma empresa onde o sistema trabalhará com as informações dos colaboradores desta empresa.
CREATE DATABASE db_rH;

USE db_rH;



-- Crie uma tabela de colaboradores e determine 5 atributos relevantes dos colaboradores para se trabalhar com o serviço deste RH.

CREATE TABLE tb_pessoa(
ID bigint auto_increment, nome varchar(255) not null, cargo varchar (100) not null , data_nascimento date,sexo varchar(10) ,salario decimal not null,primary key (ID));


-- Insira nesta tabela no mínimo 5 dados (registros).

INSERT INTO tb_pessoa (nome, cargo, data_nascimento, sexo) 
VALUES("Boquinha", "Desenvolvedor", "1989-10-20", "M", 5000.00);

INSERT INTO tb_pessoa (nome, cargo, data_nascimento, sexo) 
VALUES("Batomzinho", "Desenvolvedor", "1989-10-20", "M", 1000.00);

INSERT INTO tb_pessoa (nome, cargo, data_nascimento, sexo) 
VALUES("Veinho do Bingo", "Desenvolvedor", "1989-10-20", "M", 5000.00);

INSERT INTO tb_pessoa (nome, cargo, data_nascimento, sexo) 
VALUES("Seu Jorge", "Desenvolvedor", "1989-10-20", "M", 1000.00);

INSERT INTO tb_pessoa (nome, cargo, data_nascimento, sexo) 
VALUES("Du Dudu e Edu", "Desenvolvedor", "1989-10-20", "M", 5000.00);

-- Faça um SELECT que retorne todes os colaboradores com o salário maior do que 2000.

SELECT * FROM tb_pessoa WHERE salario > 2000.00;


-- Faça um SELECT que retorne todes os colaboradores com o salário menor do que 2000.

SELECT * FROM tb_pessoa WHERE salario < 2000.00;


-- Ao término atualize um registro desta tabela através de uma query de atualização.
UPDATE tb_pessoa SET salario = 6000.00 WHERE id = 1;


















