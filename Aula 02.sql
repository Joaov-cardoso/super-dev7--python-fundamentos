DROP DATABASE IF EXISTS escola;

CREATE DATABASE escola;
USE escola;

-- primary key = chave primaria
-- AUTO_INCREMENT = gerar os ids automaticamente
CREATE TABLE alunos(
	id INT PRIMARY KEY AUTO_INCREMENT
);

-- Consultar como está a tabela
DESCRIBE alunos;

-- Adicionar nova coluna na tabela
ALTER TABLE alunos ADD COLUMN nome VARCHAR(50);

-- Adicionar os registros na tabela
INSERT INTO alunos(nome) VALUE ("Pedrinho");
INSERT INTO alunos(nome) VALUE ("Aninha");
INSERT INTO alunos(nome) VALUE ("Mariazinha");
INSERT INTO alunos(nome) VALUE ("Clebinho");
INSERT INTO alunos(nome) VALUE ("Luiza");
INSERT INTO alunos(nome) VALUE ("Fabiana");
INSERT INTO alunos(nome) VALUE ("Thaiz");
INSERT INTO alunos(nome) VALUE ("Du dudu e edu");

SELECT id, nome, nota1, nota2, nota3 FROM alunos ORDER BY nome;

ALTER TABLE alunos ADD COLUMN nota1 DOUBLE;
ALTER TABLE alunos ADD COLUMN nota2 DOUBLE;
ALTER TABLE alunos ADD COLUMN nota3 DOUBLE;

-- Gerar o create table como deveria ser
SHOW CREATE TABLE alunos;

-- Consultando o id do aluno que contem tal nome
SELECT id FROM alunos WHERE nome = "Pedrinho";
-- Definir as notas do Pedro
UPDATE alunos SET nota1 = 9 WHERE id = 1;
UPDATE alunos SET nota2 = 8.5 WHERE id = 1;
UPDATE alunos SET nota3 = 6.5 WHERE id = 1;
-- Definir as notas da Aninha
UPDATE alunos SET nota1 = 5, nota2 = 8, nota3 = 1.5 WHERE id = 2;
UPDATE alunos SET nota1 = NULL, nota2 = NULL, nota3 = NULL WHERE id = 3;
UPDATE alunos SET nota1 = 7.5, nota2 = 8, nota3 = 7.6 WHERE id = 4;
UPDATE alunos SET nota1 = 9, nota2 = NULL, nota3 = 9.5 WHERE id = 5;
UPDATE alunos SET nota1 = NULL, nota2 = 7.9, nota3 = 8.8 WHERE id = 6;
UPDATE alunos SET nota1 = 6.8, nota2 = 7.3, nota3 = NULL WHERE id = 7;
UPDATE alunos SET nota1 = 5.5, nota2 = 6.2, nota3 = 7.1 WHERE id = 8;

SELECT * FROM alunos;

-- AS do select é alias (apelido) para uma coluna
-- Consultar a menor nota1
SELECT MIN(nota1) AS "Menor nota" FROM alunos;
-- Consultar a maior nota1
SELECT MAX(nota1) AS "Maior nota" FROM alunos;
-- Consultar a media das notas 1
SELECT AVG(nota1) AS "Soma das notas" FROM alunos;
-- Consultar a soma das notas 1
SELECT SUM(nota1) AS "Soma das notas" FROM alunos;
-- Consultar dados dos alunos que tem a nota1 nula
SELECT * FROM alunos WHERE nota1 IS NULL;

SELECT id, nome, nota1 FROM alunos WHERE nota1 IS NULL;
UPDATE alunos SET nota1 = 0 WHERE id = 3;
UPDATE alunos SET nota1 = 2 WHERE id = 6;

SELECT id, nome, nota2 FROM alunos WHERE nota2 IS NULL;
UPDATE alunos SET nota2 = 1.4 WHERE id = 3;
UPDATE alunos SET nota2 = 10 WHERE id = 5;

SELECT id, nome, nota3 FROM alunos WHERE nota3 IS NULL;
UPDATE alunos SET nota3 = 0 WHERE id = 3;
UPDATE alunos SET nota3 = 6.8 WHERE id = 7;

SELECT nome, FORMAT((nota1 + nota2 + nota3) / 3, 2) FROM alunos;

-- Consultar os aprovados, Acima ou igual a 7
SELECT 
	nome,
    FORMAT((nota1 + nota2 + nota3) / 3, 2) 
FROM alunos
WHERE (nota1 + nota2 + nota3) / 3 >= 7;
-- Consultar os em exame menor ou igual a 6
SELECT 
	nome,
    FORMAT((nota1 + nota2 + nota3) / 3, 2) 
FROM alunos
WHERE (nota1 + nota2 + nota3) / 3 >= 6
AND (nota1 + nota2 + nota3) / 3 < 7;
-- Consultar os reprovados
SELECT 
	nome,
    FORMAT((nota1 + nota2 + nota3) / 3, 2) 
FROM alunos
WHERE (nota1 + nota2 + nota3) / 3 < 6;



CREATE TABLE jogos(
	id INT PRIMARY KEY AUTO_INCREMENT, 
    nome VARCHAR(100) NOT NULL,
    UNIQUE(nome)
);

INSERT INTO jogos(nome) VALUES
("Medal of Honor"),
("Metal Gear Solid"),
("Twisted Metal"),
("The Riftbreaker: Metal Terror"),
("Metal Slug");

-- Consultar os jogos filtrando por uma busca parcial no começo de "Me"
SELECT * FROM jogos WHERE nome LIKE "Me%";

-- Consultar os jogos que terminam com "Metal"
SELECT * FROM jogos WHERE nome LIKE "%Metal";

-- Consultar os jogos que contem  "Me"
SELECT * FROM jogos WHERE nome LIKE "%Me%";

-- Consultar em ordem decrescente
SELECT id, nome FROM jogos ORDER BY nome desc;

-- Consultar em ordem crescente
SELECT id, nome FROM jogos ORDER BY nome asc;


ALTER TABLE alunos ADD COLUMN data_nascimento DATE;

UPDATE alunos SET data_nascimento = '2000-11-23' WHERE id = 7;
UPDATE alunos SET data_nascimento = '1994-07-03' WHERE id = 4;

SELECT * 
	FROM alunos
    WHERE data_nascimento IS NULL;








