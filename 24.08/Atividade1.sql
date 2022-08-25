-- Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema trabalhará com as informações dos colaboradores desta empresa. 
-- Crie uma tabela de colaboradores e determine 5 atributos relevantes dos colaboradores para se trabalhar com o serviço deste RH.
-- Insira nesta tabela no mínimo 5 dados (registros).
-- Faça um SELECT que retorne todes os colaboradores com o salário maior do que 2000.
-- Faça um SELECT que retorne todes os colaboradores com o salário menor do que 2000.
-- Ao término atualize um registro desta tabela através de uma query de atualização.
-- Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.



-- 1) Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema trabalhará com as informações dos colaboradores desta empresa. 

CREATE DATABASE db_rh_generation;



-- 2) Crie uma tabela de colaboradores e determine 5 atributos relevantes dos colaboradores para se trabalhar com o serviço deste RH.

CREATE TABLE tb_colaboradores(
id bigint auto_increment not null primary key,
nome varchar(50),
cpf varchar(11),
data_nascimento date,
salario decimal(8,2)
);


-- 3) Insira nesta tabela no mínimo 5 dados (registros).

INSERT INTO tb_colaboradores  (nome,cpf,data_nascimento,salario)
VALUES
("Alex","08525225255","1998-10-06",5000),
("João","55548524842","2000-11-25",7500),
("Joaquina","25625485641","1999-05-01",4500),
("Gilmar","22222222222","1995-12-15",2500.55),
("Maria","33333333333","2001-07-22",7320.75);



-- 4) Faça um SELECT que retorne todes os colaboradores com o salário maior do que 2000.

SELECT * 
FROM tb_colaboradores tc 
WHERE salario > 2000;

-- 5) Faça um SELECT que retorne todes os colaboradores com o salário menor do que 2000.

SELECT *
FROM tb_colaboradores tc 
WHERE salario < 2000;

-- 6) Ao término atualize um registro desta tabela através de uma query de atualização.

UPDATE tb_colaboradores 
SET salario = 1500.55
WHERE id = 4;








