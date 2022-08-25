

-- Crie um banco de dados para um serviço de uma Pizzaria. O nome do Banco de dados deverá ter o seguinte nome db_pizzaria_legal. 
-- O sistema trabalhará com as informações dos produtos comercializados pela empresa. O sistema trabalhará com 2 tabelas tb_pizzas e tb_categorias, que deverão estar relacionadas.
create database db_pizzaria_legal;

use db_pizzaria_legal;


-- Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar as pizzas.

create table tb_categorias(
id bigint auto_increment primary key not null,
descricao varchar(255),
tamanho varchar(255),
borda_recheada boolean

);

-- Crie a tabela tb_pizzas e determine 4 atributos, além da Chave Primária, relevantes aos produtos da pizzaria.

create table tb_pizzas(
id bigint auto_increment primary key not null,
sabor varchar(255),
preco decimal(5,2),
massa varchar(255),
quantidade int,
categoria_id bigint,

foreign key(categoria_id) references tb_categorias(id)

);


-- Insira 5 registros na tabela tb_categorias.

insert into tb_categorias (descricao,tamanho,borda_recheada)
values ("Salgada","Brotinho",true),
("Salgada","Brotinho",false),
("Salgada","Média",true),
("Salgada","Média",false),
("Salgada","Grande",true),
("Salgada","Grande",false),
("Doce","Brotinho",false),
("Doce","Brotinho",true);

select * 
from tb_categorias tc ;


-- Insira 8 registros na tabela tb_pizzas, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias.

insert into tb_pizzas (sabor, preco, massa, quantidade, categoria_id)
values
("Frango c/ Catupiry",35.99,"Tradicional",5,2),
("Frango c/ Catupiry",65.99,"Tradicional",5,3),
("Frango c/ Catupiry",75.99,"Tradicional",5,5),
("Quatro Queijos",45.99,"Tradicional",5,1),
("Quatro Queijos",75.99,"Tradicional",5,4),
("Quatro Queijos",85.99,"Tradicional",5,3),
("Quatro Queijos",95.99,"Tradicional",5,5),
("Nutella",37.99,"Tradicional",5,7),
("Romeu e Julieta",32.99,"Tradicional",5,8);


-- Faça um SELECT que retorne todas as pizzas cujo valor seja maior do que R$ 45,00.

select *
from tb_pizzas tp 
where preco > 45
order by preco;


-- Faça um SELECT que retorne todas as pizzas cujo valor esteja no intervalo R$ 50,00 e R$ 100,00.

select * 
from tb_pizzas tp 
where preco between 50 and 100
order by preco desc ;


-- Faça um SELECT utilizando o operador LIKE, buscando todas as pizzas que possuam a letra M no atributo nome.

select *
from tb_pizzas tp 
where sabor like '%m%';




-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias.

select *
from tb_pizzas tp 
inner join tb_categorias tc 
on tp.categoria_id = tc.id ;


-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias, 
-- onde traga apenas as pizzas que pertençam a uma categoria específica (Exemplo: Todas as pizzas que são doce).

select *
from tb_pizzas tp 
inner join tb_categorias tc 
on tp.categoria_id  = tc.id 
where tp.categoria_id in (7,8);


