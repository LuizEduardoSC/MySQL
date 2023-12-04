CREATE DATABASE db_ecommerce;

USE tb_produtos;

CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
categoria varchar(255),
estoque int,
preco decimal(7,2) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_produtos(nome, categoria, estoque, preco)
VALUES ("Camiseta", "Vestuário", 50, 29.90),
("Notebook", "Informática", 10, 3499.00),
("Cafeteira", "Eletrodomésticos", 20, 249.90),
("Bicicleta", "Esportes", 15, 799.00),
("Smartphone", "Celulares", 30, 1999.00);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 500.00;

SELECT * FROM tb_produtos WHERE preco < 500.00;

UPDATE tb_produtos SET estoque = 15 WHERE id = 2;

SELECT nome, CONCAT('R$ ', FORMAT(preco, 2, 'pt_BR') ) AS preço FROM tb_produtos;