CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
email varchar(255),
curso varchar(255),
nota decimal(5,2) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_estudantes(nome, email, curso, nota)
VALUES ("Ana", "ana.ana@gmail.com", "ADS", 8.5),
("Bruno", "bruno.bruno@gmail.com", "CC", 7.2),
("Carlos", "carlos.carlos@gmail.com", "ENG", 9.0),
("Daniela", "daniela.daniela@gmail.com", "FIS", 6.8),
("Eduardo", "eduardo.eduardo@gmail.com", "ADM", 8.0),
("Fernanda", "fernanda.fernanda@gmail.com", "ADS", 8.0),
("João", "joao.joao@gmail.com", "ENG", 8.0),
("Helena", "helena.helena@gmail.com", "CC", 8.0);

SELECT * FROM tb_estudantes;

SELECT * FROM tb_estudantes WHERE nota > 7.0;

SELECT * FROM tb_estudantes WHERE nota < 7.0;

UPDATE tb_estudantes SET nota = 9.00 WHERE id = 5;
