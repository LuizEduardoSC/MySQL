CREATE DATABASE db_RH;

USE db_RH;

CREATE TABLE tb_colaboradores(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
cargo varchar(255),
experiencia varchar(255),
salario decimal(6,2) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_colaboradores(nome, cargo, experiencia, salario)
VALUES ("Ana", "Analista de RH", "3 Anos", 4200.00),
("Bruno", "Estagiário de RH", "5 anos", 1000.00),
("Carlos", "Assistente de RH", "1 ano", 3500.00),
("Daniela", "Consultora de RH", "4 anos", 8000.00),
("Eduardotb_colaboradores", "Coordenador de RH", "6 anos", 12000.00);

SELECT * FROM tb_colaboradores;

ALTER TABLE tb_colaboradores MODIFY salario decimal(7,2);

SELECT * FROM tb_colaboradores WHERE salario > 2000.00;

SELECT * FROM tb_colaboradores WHERE salario < 2000.00;

UPDATE tb_colaboradores SET experiencia = "2 anos" WHERE id = 7;

UPDATE tb_colaboradores SET salario = 1450.00 WHERE id = 7;

SELECT nome, CONCAT('R$ ', FORMAT(salario, 2, 'pt_BR') ) AS salario FROM tb_colaboradores;