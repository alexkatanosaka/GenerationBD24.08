-- Crie um banco de dados para um e-commerce, onde o sistema trabalhará com as informações dos produtos deste e-commerce. 
-- Crie uma tabela de produtos e determine 5 atributos relevantes dos produtos para se trabalhar com o serviço deste e-commerce.
-- Insira nesta tabela no mínimo 8 dados (registros).
-- Faça um SELECT que retorne todes os produtos com o valor maior do que 500.
-- Faça um SELECT que retorne todes os produtos com o valor menor do que 500.
-- Ao término atualize um registro desta tabela através de uma query de atualização.
-- Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.



-- 1) Crie um banco de dados para um e-commerce, onde o sistema trabalhará com as informações dos produtos deste e-commerce. 

CREATE DATABASE db_ecommerce_generation;


-- 2) Crie uma tabela de produtos e determine 5 atributos relevantes dos produtos para se trabalhar com o serviço deste e-commerce.

CREATE TABLE tb_produtos (
id bigint auto_increment not null primary key,
nome varchar(50),
categoria varchar(11),
valor decimal(6,2),
quantidade int(5)
);

-- 3) Insira nesta tabela no mínimo 8 dados (registros).

INSERT INTO tb_produtos (nome,categoria,valor,quantidade)
VALUES
("Malbec","Perfume",115.50,20),
("Whey Protein","Academia",120,30),
("Nescau","Achocolatado",11.50,25),
("Celular","Eletrônico",2552.45,12),
("Feijão","Alimento",8,23),
("Pacote Queijo 1kg","Frios",60,36),
("Egeo","Perfume",132.50,27),
("Tablet","Eletrônico",3565.25,20);


-- 4) Faça um SELECT que retorne todes os produtos com o valor maior do que 500.

SELECT *
FROM tb_produtos 
WHERE valor > 500;

-- 5) Faça um SELECT que retorne todes os produtos com o valor menor do que 500.

SELECT *
FROM tb_produtos 
WHERE valor < 500;

-- 6) Ao término atualize um registro desta tabela através de uma query de atualização.

UPDATE tb_produtos 
SET valor = 65
WHERE id = 14;
