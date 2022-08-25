-- Crie um banco de dados para um serviço de uma Farmácia. O nome do Banco de dados deverá ter o seguinte nome db_farmacia_bem_estar. 
-- O sistema trabalhará com as informações dos produtos comercializados pela empresa. O sistema trabalhará com 2 tabelas tb_produtos e tb_categorias, que deverão estar relacionadas.

create database db_farmacia_bem_estar;


-- Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar os produtos.


create table tb_categorias (
id bigint auto_increment primary key not null,
nome varchar(50),
precisa_receita boolean

);

-- Crie a tabela tb_produtos e determine 4 atributos, além da Chave Primária, relevantes aos produtos da farmácia.

create table tb_produtos (
id bigint auto_increment primary key not null,
nome varchar(50),
preco decimal(6,2),
codigo int,
estoque int,
categoria_id bigint,

foreign key(categoria_id) references tb_categorias(id)

);



-- Insira 5 registros na tabela tb_categorias.

insert into tb_categorias (nome,precisa_receita)
values 
("Medicamentos",true),
("Academia",false),
("Cosméticos",false),
("Infantil",false),
("Saúde Sexual",false);

select * from tb_categorias tc ;


-- Insira 8 registros na tabela tb_produtos, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias.

insert into tb_produtos (nome,preco,codigo,estoque,categoria_id)
values
("Neosaldina",10,62345,52,1),
("Whey Protein",120,62346,50,2),
("Perfume",60,62347,62,3),
("Fralda",30,62348,52,1),
("Preservativo",5,62349,30,5),
("Dipirona",35.99,62350,87,1),
("Creme",15.50,62351,52,3),
("Hipogloss",25.90,62352,52,4);


-- Faça um SELECT que retorne todes os produtos cujo valor seja maior do que R$ 50,00.

select *
from tb_produtos tp 
where preco >50;


-- Faça um SELECT que retorne todes os produtos cujo valor esteja no intervalo R$ 5,00 e R$ 60,00.

select *
from tb_produtos tp 
where preco between 5 and 60;


-- Faça um SELECT utilizando o operador LIKE, buscando todes os produtos que possuam a letra C no atributo nome.

select *
from tb_produtos tp 
where nome like '%c%';


-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias.

select *
from tb_produtos tp 
inner join tb_categorias tc 
on tp.categoria_id = tc.id;


-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias, 
-- onde traga apenas os produtos que pertençam a uma categoria específica (Exemplo: Todes os produtos que pertencem a categoria cosméticos).

select *
from tb_produtos tp 
inner join tb_categorias tc 
on tp.categoria_id = tc.id 
where tc.id = 3;











