CREATE DATABASE db_cidade_das_carnes;
USE db_cidade_das_carnes;

CREATE TABLE tb_categorias(
	id int primary key auto_increment,
    tipoAnimal varchar(60),
    descricao varchar(60)
);

CREATE TABLE tb_produtos(
	id int primary key auto_increment,
    tipo varchar(60),
    peso decimal (7,3),
    preco decimal(6,2),
    categoria_id int,
    FOREIGN KEY(categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(tipoAnimal, descricao)
values 
("Bovina", "carne saborosa"),
("Suina", "carne saborosa"),
("Aviaria", "Frango saboroso"),
("Frutos do Mar", "pexe saboroso"),
("Caprino", "Carne saborosa");


SELECT * FROM tb_produtos;
INSERT INTO tb_produtos(tipo, peso,preco,categoria_id)
values
("Picanha", 100.300, 58.00, 1),
("Peito de Frango", 80.730, 25.00, 3),
("Contra File", 250.480, 40.00, 1),
("Costela Suina", 200.620, 58.00, 2),
("Paleta", 200.620, 48.00, 5),
("Salmao", 100.620, 58.00, 4);

SELECT * FROM tb_produtos WHERE preco > 50.00;
SELECT * FROM tb_produtos WHERE preco < 50.00;

SELECT * FROM tb_produtos WHERE preco >= 45.00 AND preco <= 100;
SELECT * FROM tb_produtos WHERE preco BETWEEN 50 AND 100;

SELECT * FROM tb_produtos WHERE tipo LIKE "%a%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_categorias.id = tb_produtos.categoria_id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias WHERE tb_categorias.id = 2 AND tb_produtos.categoria_id = 2;


