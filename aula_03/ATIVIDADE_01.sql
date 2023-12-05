CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes (
id bigint AUTO_INCREMENT,
nome_classe varchar(255) NOT NULL,
poder_classe INT NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_classes (nome_classe, poder_classe)
VALUES ("Warrior", 80),
("Wizard", 90),
("Archer", 70),
("Paladin", 75),
("Necromancer", 85),
("Assassin", 80),
("Barbarian", 70),
("Druid", 80);

SELECT * FROM tb_classes;

CREATE TABLE tb_personagens (
id bigint AUTO_INCREMENT,
nome_personagem varchar(255) NOT NULL,
classe_personagem bigint NOT NULL,
nivel_personagem INT NOT NULL,
pontos_de_vida INT NOT NULL,
pontos_de_magia INT NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (classe_personagem) REFERENCES tb_classes (id)
);

INSERT INTO tb_personagens (nome_personagem, classe_personagem, nivel_personagem, pontos_de_vida, pontos_de_magia)
VALUES ("Aragorn", 1, 10, 100, 0),
("Gandalf", 2, 12, 80, 120),
("Legolas", 3, 9, 70, 40),
("Lara", 3, 8, 60, 30),
("Arthur", 4, 7, 90, 10),
("Morgana", 5, 10, 70, 100),
("Ezio", 6, 9, 50, 200),
("Conan", 7, 8, 80, 0),
("Merlin", 2, 11, 75, 110),
("Athena", 4, 10, 95, 15),
("Loki", 8, 9, 65, 60);

SELECT * FROM tb_personagens;

SELECT * FROM tb_personagens WHERE nivel_personagem > 10;

SELECT * FROM tb_personagens WHERE nivel_personagem < 10;

SELECT * FROM tb_personagens WHERE nivel_personagem BETWEEN 8 and 10;

SELECT * FROM tb_personagens WHERE nome_personagem LIKE "%c%";

-- INNER JOIN (Juntar duas tabelas e pegar somente os elementos que possuem uma chave estrangeira(categoria))
SELECT * 
FROM tb_personagens INNER JOIN tb_classes -- De qual tabela para qual tabela
ON tb_personagens.classe_personagem = tb_classes.id
WHERE tb_classes.nome_classe = "Archer";