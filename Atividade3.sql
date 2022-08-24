-- Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as informações dos estudantes deste registro dessa escola. 
-- Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 5 atributos relevantes dos estudantes para se trabalhar com o serviço dessa escola.
-- Insira nesta tabela no mínimo 8 dados (registros).
-- Faça um SELECT que retorne todes o/a(s) estudantes com a nota maior do que 7.0.
-- Faça um SELECT que retorne todes o/a(s) estudantes com a nota menor do que 7.0.
-- Ao término atualize um registro desta tabela através de uma query de atualização.
-- Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.



-- 1) Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as informações dos estudantes deste registro dessa escola. 
CREATE DATABASE db_escola_generation;


-- 2) Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 5 atributos relevantes dos estudantes para se trabalhar com o serviço dessa escola.

CREATE TABLE tb_estudantes(
id bigint auto_increment not null primary key,
nome varchar(50),
data_nascimento date,
turma smallint(3),
nota decimal(3,1)
);

SELECT * FROM db_escola_generation.tb_estudantes te ;


-- 3) Insira nesta tabela no mínimo 8 dados (registros).

INSERT INTO tb_estudantes (nome,data_nascimento,turma,nota)
VALUES
("Alex","1998-10-06",57,8.5);

INSERT INTO tb_estudantes (nome,data_nascimento,turma,nota)
VALUES
("Ruriê","1997-02-05",57,7.5),
("Giovana","1998-09-15",57,6.0),
("Luca","1997-05-20",57,9.5),
("Gabriel","2000-03-01",57,10),
("Bruna","2001-07-19",57,8),
("João","1998-12-29",57,5.5),
("Jessica","1995-01-06",57,5.5);

-- 4) Faça um SELECT que retorne todes o/a(s) estudantes com a nota maior do que 7.0.

SELECT * 
FROM tb_estudantes te 
WHERE nota > 7;

-- 5) Faça um SELECT que retorne todes o/a(s) estudantes com a nota menor do que 7.0.

SELECT *
FROM tb_estudantes te 
WHERE nota < 7;


-- 6) Ao término atualize um registro desta tabela através de uma query de atualização.

UPDATE tb_estudantes 
SET nota = 7.2
WHERE id = 7;






