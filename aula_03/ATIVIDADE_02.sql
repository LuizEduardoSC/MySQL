CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
id bigint AUTO_INCREMENT,
nome_categoria varchar(255) NOT NULL,
descricao_categoria varchar(255) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_categorias (nome_categoria, descricao_categoria)
VALUES ("Tradicional", "Pizzas com ingredientes simples e saborosos"),
("Especial", "Pizzas com coberturas diferenciadas e criativas"),
("Doce", "Pizzas com recheios doces e deliciosos"),
("Vegana", "Pizzas sem ingredientes de origem animal"),
("Sem glúten", "Pizzas com massa sem glúten para pessoas com intolerância ou alergia");

SELECT * FROM tb_categorias;

CREATE TABLE tb_pizzas (
id bigint AUTO_INCREMENT,
nome_pizza varchar(255) NOT NULL,
preco_pizza decimal(10,2) NOT NULL,
tamanho_pizza varchar(255) NOT NULL,
categoria_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id)
);

INSERT INTO tb_pizzas (nome_pizza, preco_pizza, tamanho_pizza, categoria_id)
VALUES ("Marguerita", 58.00, "Média", 1),
("Calabresa", 60.00, "Médias", 1),
("Frango com Catupiri", 64.00, "Média", 2),
("Quatro Queijos", 68.00, "Média", 2),
("Chocolate", 40.00, "Pequena", 3),
("Banana com Canela", 45.00, "Pequena", 3),
("Vegana de Brócolis", 128.00, "Grande", 4),
("Sem Glúten de Mussarela", 135.00, "Grande", 5);

SELECT * FROM tb_pizzas;

SELECT * FROM tb_pizzas WHERE preco_pizza > 45.00;

SELECT * FROM tb_pizzas WHERE preco_pizza BETWEEN 50.00 and 100.00;

SELECT * FROM tb_pizzas WHERE nome_pizza LIKE "%M%";

SELECT * 
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id;

SELECT * 
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id
WHERE tb_categorias.nome_categoria = "Doce";